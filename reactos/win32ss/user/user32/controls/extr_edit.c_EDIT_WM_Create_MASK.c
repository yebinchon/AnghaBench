#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ selection_end; scalar_t__ selection_start; int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int LRESULT ;
typedef  scalar_t__* LPCWSTR ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 

__attribute__((used)) static LRESULT FUNC9(EDITSTATE *es, LPCWSTR name)
{
        RECT clientRect;

	FUNC7("%s\n", FUNC8(name));
       /*
        *	To initialize some final structure members, we call some helper
        *	functions.  However, since the EDITSTATE is not consistent (i.e.
        *	not fully initialized), we should be very careful which
        *	functions can be called, and in what order.
        */
        FUNC5(es, 0, FALSE);
        FUNC0(es);

        /* We need to calculate the format rect
           (applications may send EM_SETMARGINS before the control gets visible) */
        FUNC6(es->hwndSelf, &clientRect);
        FUNC3(es, &clientRect);

       if (name && *name) {
	   FUNC1(es, FALSE, name, FALSE, FALSE);
	   /* if we insert text to the editline, the text scrolls out
            * of the window, as the caret is placed after the insert
            * pos normally; thus we reset es->selection... to 0 and
            * update caret
            */
	   es->selection_start = es->selection_end = 0;
           /* Adobe Photoshop does NOT like this. and MSDN says that EN_CHANGE
            * Messages are only to be sent when the USER does something to
            * change the contents. So I am removing this EN_CHANGE
            *
            * EDIT_NOTIFY_PARENT(es, EN_CHANGE);
            */
	   FUNC2(es);
       }
       /* force scroll info update */
       FUNC4(es);
       /* The rule seems to return 1 here for success */
       /* Power Builder masked edit controls will crash  */
       /* if not. */
       /* FIXME: is that in all cases so ? */
       return 1;
}