#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int wState; scalar_t__ hWndLBox; scalar_t__ hWndEdit; } ;
typedef  scalar_t__ LRESULT ;
typedef  scalar_t__* LPSTR ;
typedef  TYPE_1__* LPHEADCOMBO ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int CBF_EDIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_GETCURSEL ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int /*<<< orphan*/  LB_GETTEXTLEN ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_GETTEXT ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,scalar_t__) ; 

__attribute__((used)) static LRESULT FUNC6( LPHEADCOMBO lphc, INT count, LPSTR buf )
{
    INT length;

    if( lphc->wState & CBF_EDIT )
        return FUNC3( lphc->hWndEdit, WM_GETTEXT, count, (LPARAM)buf );

    /* get it from the listbox */

    if (!count || !buf) return 0;
    if( lphc->hWndLBox )
    {
        INT idx = FUNC4(lphc->hWndLBox, LB_GETCURSEL, 0, 0);
        if (idx == LB_ERR) goto error;
        length = FUNC3(lphc->hWndLBox, LB_GETTEXTLEN, idx, 0 );
        if (length == LB_ERR) goto error;

        /* 'length' is without the terminating character */
        if (length >= count)
        {
            LPSTR lpBuffer = FUNC1(FUNC0(), 0, (length + 1) );
            if (!lpBuffer) goto error;
            length = FUNC3(lphc->hWndLBox, LB_GETTEXT, idx, (LPARAM)lpBuffer);

            /* truncate if buffer is too short */
            if (length != LB_ERR)
            {
                FUNC5( buf, lpBuffer, count );
                length = count;
            }
            FUNC2( FUNC0(), 0, lpBuffer );
        }
        else length = FUNC3(lphc->hWndLBox, LB_GETTEXT, idx, (LPARAM)buf);

        if (length == LB_ERR) return 0;
        return length;
    }

 error:  /* error - truncate string, return zero */
    buf[0] = 0;
    return 0;
}