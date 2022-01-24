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
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ps_struct_t ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 scalar_t__ IDC_PS_PASTE ; 
 int /*<<< orphan*/  IDC_PS_PASTELINKLIST ; 
 int /*<<< orphan*/  IDC_PS_PASTELIST ; 
 int /*<<< orphan*/  PSF_SELECTPASTE ; 
 int /*<<< orphan*/  PSF_SELECTPASTELINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(HWND hdlg, ps_struct_t *ps_struct, UINT id)
{
    if(id == IDC_PS_PASTE)
    {
        ps_struct->flags &= ~PSF_SELECTPASTELINK;
        ps_struct->flags |= PSF_SELECTPASTE;
    }
    else
    {
        ps_struct->flags &= ~PSF_SELECTPASTE;
        ps_struct->flags |= PSF_SELECTPASTELINK;
    }

    FUNC2(hdlg, ps_struct);
    FUNC1(hdlg, id == IDC_PS_PASTE ? IDC_PS_PASTELIST : IDC_PS_PASTELINKLIST);
    FUNC0(hdlg, ps_struct);
}