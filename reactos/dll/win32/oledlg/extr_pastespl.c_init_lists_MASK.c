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
struct TYPE_3__ {int flags; int /*<<< orphan*/  ps; } ;
typedef  TYPE_1__ ps_struct_t ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IDC_PS_PASTE ; 
 scalar_t__ IDC_PS_PASTELINK ; 
 scalar_t__ IDC_PS_PASTELINKLIST ; 
 scalar_t__ IDC_PS_PASTELIST ; 
 int /*<<< orphan*/  IDOK ; 
 int PSF_SELECTPASTE ; 
 int PSF_SELECTPASTELINK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(HWND hdlg, ps_struct_t *ps_struct)
{
    DWORD pastes_added = FUNC4(hdlg, ps_struct->ps);
    DWORD links_added = FUNC3(hdlg, ps_struct->ps);
    UINT check_id, list_id;

    if((ps_struct->flags & (PSF_SELECTPASTE | PSF_SELECTPASTELINK)) == 0)
        ps_struct->flags |= PSF_SELECTPASTE;

    if(!pastes_added && !links_added)
        ps_struct->flags &= ~(PSF_SELECTPASTE | PSF_SELECTPASTELINK);
    else if(!pastes_added && (ps_struct->flags & PSF_SELECTPASTE))
    {
        ps_struct->flags &= ~PSF_SELECTPASTE;
        ps_struct->flags |= PSF_SELECTPASTELINK;
    }
    else if(!links_added && (ps_struct->flags & PSF_SELECTPASTELINK))
    {
        ps_struct->flags &= ~PSF_SELECTPASTELINK;
        ps_struct->flags |= PSF_SELECTPASTE;
    }

    check_id = 0;
    list_id = 0;
    if(ps_struct->flags & PSF_SELECTPASTE)
    {
        check_id = IDC_PS_PASTE;
        list_id = IDC_PS_PASTELIST;
    }
    else if(ps_struct->flags & PSF_SELECTPASTELINK)
    {
        check_id = IDC_PS_PASTELINK;
        list_id = IDC_PS_PASTELINKLIST;
    }

    FUNC0(hdlg, IDC_PS_PASTE, IDC_PS_PASTELINK, check_id);

    if(list_id)
        FUNC5(hdlg, list_id);
    else
        FUNC1(FUNC2(hdlg, IDOK), 0);
}