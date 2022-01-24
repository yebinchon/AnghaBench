#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct default_callback_context {struct default_callback_context* message; int /*<<< orphan*/ * progress; int /*<<< orphan*/ * owner; struct default_callback_context* magic; } ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  struct default_callback_context* DWORD ;

/* Variables and functions */
 struct default_callback_context* FUNC0 (int /*<<< orphan*/ *) ; 
 struct default_callback_context* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct default_callback_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct default_callback_context*) ; 
 struct default_callback_context* WM_USER ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,struct default_callback_context*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    struct default_callback_context *ctxt;
    static const DWORD magic = 0x43515053; /* "SPQC" */
    HWND owner, progress;

    owner = (HWND)0x123;
    progress = (HWND)0x456;
    ctxt = FUNC1(owner, progress, WM_USER, 0, NULL);
    FUNC4(ctxt != NULL, "got %p\n", ctxt);

    FUNC4(ctxt->magic == magic || FUNC3(ctxt->magic != magic) /* win2000 */, "got magic 0x%08x\n", ctxt->magic);
    if (ctxt->magic == magic)
    {
        FUNC4(ctxt->owner == owner, "got %p, expected %p\n", ctxt->owner, owner);
        FUNC4(ctxt->progress == progress, "got %p, expected %p\n", ctxt->progress, progress);
        FUNC4(ctxt->message == WM_USER, "got %d, expected %d\n", ctxt->message, WM_USER);
        FUNC2(ctxt);
    }
    else
    {
        FUNC5("Skipping tests on old systems.\n");
        FUNC2(ctxt);
        return;
    }

    ctxt = FUNC0(owner);
    FUNC4(ctxt->magic == magic, "got magic 0x%08x\n", ctxt->magic);
    FUNC4(ctxt->owner == owner, "got %p, expected %p\n", ctxt->owner, owner);
    FUNC4(ctxt->progress == NULL, "got %p, expected %p\n", ctxt->progress, progress);
    FUNC4(ctxt->message == 0, "got %d\n", ctxt->message);
    FUNC2(ctxt);
}