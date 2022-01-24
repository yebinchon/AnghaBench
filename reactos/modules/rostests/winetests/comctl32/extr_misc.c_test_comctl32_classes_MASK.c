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
typedef  int BOOL ;

/* Variables and functions */
 char* ANIMATE_CLASSA ; 
 int CS_DBLCLKS ; 
 int CS_DROPSHADOW ; 
 int CS_GLOBALCLASS ; 
 int CS_HREDRAW ; 
 int CS_SAVEBITS ; 
 int CS_VREDRAW ; 
 char* DATETIMEPICK_CLASSA ; 
 int /*<<< orphan*/  FALSE ; 
 char* HOTKEY_CLASSA ; 
 char* MONTHCAL_CLASSA ; 
 char* PROGRESS_CLASSA ; 
 char* REBARCLASSNAMEA ; 
 char* STATUSCLASSNAMEA ; 
 char* TOOLBARCLASSNAMEA ; 
 char* TOOLTIPS_CLASSA ; 
 char* TRACKBAR_CLASSA ; 
 int /*<<< orphan*/  TRUE ; 
 char* UPDOWN_CLASSA ; 
 char* WC_COMBOBOXEXA ; 
 char* WC_HEADERA ; 
 char* WC_IPADDRESSA ; 
 char* WC_LISTVIEWA ; 
 char* WC_NATIVEFONTCTLA ; 
 char* WC_PAGESCROLLERA ; 
 char* WC_TABCONTROLA ; 
 char* WC_TREEVIEWA ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(BOOL v6)
{
    FUNC0(ANIMATE_CLASSA,      1, CS_DBLCLKS | CS_GLOBALCLASS, 0, FALSE);
    FUNC0(WC_COMBOBOXEXA,      1, CS_GLOBALCLASS, 0, FALSE);
    FUNC0(DATETIMEPICK_CLASSA, 1, CS_GLOBALCLASS, 0, FALSE);
    FUNC0(WC_HEADERA,          1, CS_DBLCLKS | CS_GLOBALCLASS, 0, FALSE);
    FUNC0(HOTKEY_CLASSA,       1, CS_GLOBALCLASS, 0, FALSE);
    FUNC0(WC_IPADDRESSA,       1, CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS, 0, FALSE);
    FUNC0(WC_LISTVIEWA,        1, CS_DBLCLKS | CS_GLOBALCLASS, 0, FALSE);
    FUNC0(MONTHCAL_CLASSA,     1, CS_GLOBALCLASS, 0, FALSE);
    FUNC0(WC_NATIVEFONTCTLA,   1, CS_GLOBALCLASS, 0, FALSE);
    FUNC0(WC_PAGESCROLLERA,    1, CS_GLOBALCLASS, 0, FALSE);
    FUNC0(PROGRESS_CLASSA,     1, CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS, 0, FALSE);
    FUNC0(REBARCLASSNAMEA,     1, CS_DBLCLKS | CS_GLOBALCLASS, 0, FALSE);
    FUNC0(STATUSCLASSNAMEA,    1, CS_DBLCLKS | CS_VREDRAW | CS_GLOBALCLASS, 0, FALSE);
    FUNC0(WC_TABCONTROLA,      1, CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS, 0, FALSE);
    FUNC0(TOOLBARCLASSNAMEA,   1, CS_DBLCLKS | CS_GLOBALCLASS, 0, FALSE);
    if (v6)
        FUNC0(TOOLTIPS_CLASSA, 1, CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS | CS_DROPSHADOW, CS_SAVEBITS | CS_HREDRAW | CS_VREDRAW /* XP */, TRUE);
    else
        FUNC0(TOOLTIPS_CLASSA, 1, CS_DBLCLKS | CS_GLOBALCLASS | CS_SAVEBITS, CS_HREDRAW | CS_VREDRAW /* XP */, FALSE);
    FUNC0(TRACKBAR_CLASSA,     1, CS_GLOBALCLASS, 0, FALSE);
    FUNC0(WC_TREEVIEWA,        1, CS_DBLCLKS | CS_GLOBALCLASS, 0, FALSE);
    FUNC0(UPDOWN_CLASSA,       1, CS_HREDRAW | CS_VREDRAW | CS_GLOBALCLASS, 0, FALSE);
    FUNC0("SysLink", v6, CS_GLOBALCLASS, 0, FALSE);
}