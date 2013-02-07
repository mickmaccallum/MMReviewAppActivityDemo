MMReviewAppActivity
===================

This project contains a subclass of UIActivity that allows you to simply pass your applications App Store ID to the activity, and when added to a UIActivityViewController, you'll have a button that takes the user straight the your apps review page in the App Store.


To use this subclass, simply add "MMReviewAppActivity.h" and "MMReviewAppActivity.m" to your project. Make sure that both the "copy file" and "add to target" check boxes are selected.

From there, import "MMReviewAppActivity.h" into your view controller and create an instance of the activity with the following.

```MMReviewAppActivity *rater = [MMReviewAppActivity new];```

```[rater setAppStoreAppID:538725002];```

```[rater setTitleOfActivity:@"Write Review"];```


//    [rater setIconOfActivity:[UIImage imageNamed:@"myOtherImage"]];


^^Optional: If you want to use the images provided with the project, leave that line commented and include the images from this project in yours. If you wish to use your own image, use the line above to add it to the activity.

For a full usage example see the ViewController.m file inside the project.


Created by Michael MacCallum on 2/5/13. 

This Software is provided on an "AS IS" basis. I MAKE NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, REGARDING THE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.

IN NO EVENT SHALL I BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE SOFTWARE, HOWEVER CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE, EVEN IF I HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

That being said, you are free to use this code free of charge for absolutely anything you want. You may use this in personal projects, commercial projects or for anything else.

Accreditation is not required, but is always appreciated.
