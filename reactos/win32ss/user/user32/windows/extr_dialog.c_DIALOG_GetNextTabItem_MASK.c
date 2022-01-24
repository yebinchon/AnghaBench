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
typedef  int /*<<< orphan*/  UINT ;
typedef  int LONG ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  GW_CHILD ; 
 int /*<<< orphan*/  GW_HWNDFIRST ; 
 int /*<<< orphan*/  GW_HWNDLAST ; 
 int /*<<< orphan*/  GW_HWNDNEXT ; 
 int /*<<< orphan*/  GW_HWNDPREV ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int WS_DISABLED ; 
 int WS_EX_CONTROLPARENT ; 
 int WS_TABSTOP ; 
 int WS_VISIBLE ; 

__attribute__((used)) static HWND FUNC4( HWND hwndMain, HWND hwndDlg, HWND hwndCtrl, BOOL fPrevious )
{
    LONG dsStyle;
    LONG exStyle;
    UINT wndSearch = fPrevious ? GW_HWNDPREV : GW_HWNDNEXT;
    HWND retWnd = 0;
    HWND hChildFirst = 0;

    if(!hwndCtrl)
    {
        hChildFirst = FUNC1(hwndDlg,GW_CHILD);
        if(fPrevious) hChildFirst = FUNC1(hChildFirst,GW_HWNDLAST);
    }
    else if (FUNC3( hwndMain, hwndCtrl ))
    {
        hChildFirst = FUNC1(hwndCtrl,wndSearch);
        if(!hChildFirst)
        {
            if(FUNC0(hwndCtrl) != hwndMain)
                /* i.e. if we are not at the top level of the recursion */
                hChildFirst = FUNC1(FUNC0(hwndCtrl),wndSearch);
            else
                hChildFirst = FUNC1(hwndCtrl, fPrevious ? GW_HWNDLAST : GW_HWNDFIRST);
        }
    }

    while(hChildFirst)
    {
        dsStyle = FUNC2(hChildFirst,GWL_STYLE);
        exStyle = FUNC2(hChildFirst,GWL_EXSTYLE);
        if( (exStyle & WS_EX_CONTROLPARENT) && (dsStyle & WS_VISIBLE) && !(dsStyle & WS_DISABLED))
        {
            HWND retWnd;
            retWnd = FUNC4(hwndMain,hChildFirst,NULL,fPrevious );
            if (retWnd) return (retWnd);
        }
        else if( (dsStyle & WS_TABSTOP) && (dsStyle & WS_VISIBLE) && !(dsStyle & WS_DISABLED))
        {
            return (hChildFirst);
        }
        hChildFirst = FUNC1(hChildFirst,wndSearch);
    }
    if(hwndCtrl)
    {
        HWND hParent = FUNC0(hwndCtrl);
        while(hParent)
        {
            if(hParent == hwndMain) break;
            retWnd = FUNC4(hwndMain,FUNC0(hParent),hParent,fPrevious );
            if(retWnd) break;
            hParent = FUNC0(hParent);
        }
        if(!retWnd)
            retWnd = FUNC4(hwndMain,hwndMain,NULL,fPrevious );
    }
    return retWnd ? retWnd : hwndCtrl;
}