#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  marshal_data; scalar_t__ window; scalar_t__ src_data; } ;
typedef  TYPE_1__ ole_clipbrd ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clipbrd_wndclass ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* theOleClipboard ; 

void FUNC9(void)
{
    ole_clipbrd *clipbrd = theOleClipboard;

    FUNC6("()\n");

    if ( clipbrd )
    {
        static const WCHAR ole32W[] = {'o','l','e','3','2',0};
        HINSTANCE hinst = FUNC1(ole32W);

        /* OleUninitialize() does not release the reference to the dataobject, so
           take an additional reference here.  This reference is then leaked. */
        if (clipbrd->src_data)
        {
            FUNC4(clipbrd->src_data);
            FUNC8(clipbrd, NULL);
        }

        if ( clipbrd->window )
        {
            FUNC0(clipbrd->window);
            FUNC7( clipbrd_wndclass, hinst );
        }

        FUNC5(clipbrd->marshal_data);
        FUNC3(FUNC2(), 0, clipbrd);
        theOleClipboard = NULL;
    }
}