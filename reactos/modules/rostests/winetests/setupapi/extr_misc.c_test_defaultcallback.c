
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct default_callback_context {struct default_callback_context* message; int * progress; int * owner; struct default_callback_context* magic; } ;
typedef int * HWND ;
typedef struct default_callback_context* DWORD ;


 struct default_callback_context* SetupInitDefaultQueueCallback (int *) ;
 struct default_callback_context* SetupInitDefaultQueueCallbackEx (int *,int *,struct default_callback_context*,int ,int *) ;
 int SetupTermDefaultQueueCallback (struct default_callback_context*) ;
 struct default_callback_context* WM_USER ;
 scalar_t__ broken (int) ;
 int ok (int,char*,struct default_callback_context*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_defaultcallback(void)
{
    struct default_callback_context *ctxt;
    static const DWORD magic = 0x43515053;
    HWND owner, progress;

    owner = (HWND)0x123;
    progress = (HWND)0x456;
    ctxt = SetupInitDefaultQueueCallbackEx(owner, progress, WM_USER, 0, ((void*)0));
    ok(ctxt != ((void*)0), "got %p\n", ctxt);

    ok(ctxt->magic == magic || broken(ctxt->magic != magic) , "got magic 0x%08x\n", ctxt->magic);
    if (ctxt->magic == magic)
    {
        ok(ctxt->owner == owner, "got %p, expected %p\n", ctxt->owner, owner);
        ok(ctxt->progress == progress, "got %p, expected %p\n", ctxt->progress, progress);
        ok(ctxt->message == WM_USER, "got %d, expected %d\n", ctxt->message, WM_USER);
        SetupTermDefaultQueueCallback(ctxt);
    }
    else
    {
        win_skip("Skipping tests on old systems.\n");
        SetupTermDefaultQueueCallback(ctxt);
        return;
    }

    ctxt = SetupInitDefaultQueueCallback(owner);
    ok(ctxt->magic == magic, "got magic 0x%08x\n", ctxt->magic);
    ok(ctxt->owner == owner, "got %p, expected %p\n", ctxt->owner, owner);
    ok(ctxt->progress == ((void*)0), "got %p, expected %p\n", ctxt->progress, progress);
    ok(ctxt->message == 0, "got %d\n", ctxt->message);
    SetupTermDefaultQueueCallback(ctxt);
}
