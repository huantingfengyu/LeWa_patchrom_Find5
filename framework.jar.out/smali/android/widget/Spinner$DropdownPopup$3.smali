.class Landroid/widget/Spinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner$DropdownPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Spinner$DropdownPopup;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 999
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup$3;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Landroid/widget/Spinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .prologue
    .line 1001
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$3;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object v1, v1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$3;->this$1:Landroid/widget/Spinner$DropdownPopup;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/Spinner$DropdownPopup;->mGlobalLayoutListenerIsSet:Z

    :cond_0
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$3;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object v1, v1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v1}, Landroid/widget/Spinner$Injector;->setSpinnerBackGround(Landroid/widget/Spinner;)V

    return-void
.end method
