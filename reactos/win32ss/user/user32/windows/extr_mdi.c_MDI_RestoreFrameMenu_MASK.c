#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  menuInfo ;
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int cbSize; int fMask; int fType; scalar_t__ dwTypeData; scalar_t__ hbmpItem; } ;
typedef  TYPE_1__ MENUITEMINFOW ;
typedef  scalar_t__ LPWSTR ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  scalar_t__ HBITMAP ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int MFT_BITMAP ; 
 int /*<<< orphan*/  MF_BYCOMMAND ; 
 int /*<<< orphan*/  MF_BYPOSITION ; 
 int MIIM_BITMAP ; 
 int MIIM_DATA ; 
 int MIIM_TYPE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SC_CLOSE ; 
 scalar_t__ SC_MINIMIZE ; 
 scalar_t__ SC_RESTORE ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC11( HWND frame, HWND hChild, HBITMAP hBmpClose )
{
    MENUITEMINFOW menuInfo;
    HMENU menu = FUNC4( frame );
    INT nItems;
    UINT iId;

    FUNC9("frame %p,child %p\n",frame, hChild);

    if (!menu) return FALSE;

    /* if there is no system buttons then nothing to do */
    nItems = FUNC5(menu) - 1;
    iId = FUNC6(menu, nItems);
    if ( !(iId == SC_RESTORE || iId == SC_CLOSE) )
    {
        FUNC3("no system buttons then nothing to do\n");
        return FALSE;
    }

    /*
     * Remove the system menu, If that menu is the icon of the window
     * as it is in win95, we have to delete the bitmap.
     */
    FUNC10(&menuInfo, 0, sizeof(menuInfo));
    menuInfo.cbSize = sizeof(menuInfo);
    menuInfo.fMask  = MIIM_DATA | MIIM_TYPE | MIIM_BITMAP;

    FUNC7(menu,
		     0,
		     TRUE,
		     &menuInfo);

    FUNC8(menu,0,MF_BYPOSITION);

    if ( (menuInfo.fType & MFT_BITMAP) &&
	 (menuInfo.dwTypeData != 0) &&
	 (menuInfo.dwTypeData != (LPWSTR)hBmpClose) )
    {
        FUNC1(menuInfo.dwTypeData);
    }

    if ( menuInfo.hbmpItem != 0 )
         FUNC1(menuInfo.hbmpItem);

    /* close */
    FUNC0(menu, SC_CLOSE, MF_BYCOMMAND);
    /* restore */
    FUNC0(menu, SC_RESTORE, MF_BYCOMMAND);
    /* minimize */
    FUNC0(menu, SC_MINIMIZE, MF_BYCOMMAND);

    FUNC2(frame);

    return TRUE;
}