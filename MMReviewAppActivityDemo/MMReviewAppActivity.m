//  Created by Michael MacCallum on 2/5/13.
//
//  This Software is provided on an "AS IS" basis. I MAKE NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT
//  LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE,
//  REGARDING THE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. IN NO EVENT
//  SHALL I BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
//  TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//  ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE SOFTWARE, HOWEVER
//  CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE,
//  EVEN IF I HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//  That being said, you are free to use this code free of charge for absolutely anything you want. You may use this in personal projects, commercial projects or for anything else.
//
//  Accreditation is not required, but is always appreciated.
#import "MMReviewAppActivity.h"

@implementation MMReviewAppActivity
{
	NSURL *_appStoreURL;
}

- (NSString *)activityType
{
	return NSStringFromClass([self class]);
}

- (NSString *)activityTitle
{
    if (self.titleOfActivity.length > 0) {
        return self.titleOfActivity;
    }
	return @"Upgrade";
}

- (UIImage *)activityImage
{
    if (self.iconOfActivity != nil) {
        return self.iconOfActivity;
    }
	return [UIImage imageNamed:@"reviewActivityIcon"];
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems
{
    _appStoreURL = [NSURL URLWithString:[NSString stringWithFormat:@"https://userpub.itunes.apple.com/WebObjects/MZUserPublishing.woa/wa/addUserReview?type=Purple+Software&id=%u&mt=8&o=i",self.appStoreAppID]];

    if (self.appStoreAppID > 0 && [[UIApplication sharedApplication] canOpenURL:_appStoreURL]) {
        return YES;
    }

	return NO;
}

- (void)performActivity
{
	[self activityDidFinish:[[UIApplication sharedApplication] openURL:_appStoreURL]];
}

@end
