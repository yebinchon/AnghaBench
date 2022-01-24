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
struct TYPE_5__ {int /*<<< orphan*/  marshal_data; int /*<<< orphan*/ * cached_enum; int /*<<< orphan*/ * src_data; int /*<<< orphan*/ * window; int /*<<< orphan*/ * latest_snapshot; } ;
typedef  TYPE_1__ ole_clipbrd ;
typedef  int /*<<< orphan*/  HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int GMEM_DDESHARE ; 
 int GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* theOleClipboard ; 

void FUNC9(void)
{
    FUNC8();

    if ( !theOleClipboard )
    {
        ole_clipbrd* clipbrd;
        HGLOBAL h;

        FUNC7("()\n");

        clipbrd = FUNC5( FUNC2(), 0, sizeof(*clipbrd) );
        if (!clipbrd) return;

        clipbrd->latest_snapshot = NULL;
        clipbrd->window = NULL;
        clipbrd->src_data = NULL;
        clipbrd->cached_enum = NULL;

        h = FUNC3(GMEM_DDESHARE | GMEM_MOVEABLE, 0);
        if(!h)
        {
            FUNC6(FUNC2(), 0, clipbrd);
            return;
        }

        if(FUNC1(FUNC0(h, TRUE, &clipbrd->marshal_data)))
        {
            FUNC4(h);
            FUNC6(FUNC2(), 0, clipbrd);
            return;
        }

        theOleClipboard = clipbrd;
    }
}