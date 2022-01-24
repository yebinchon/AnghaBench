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
struct TYPE_3__ {int flags; int /*<<< orphan*/ * source_name; int /*<<< orphan*/ * link_source_name; } ;
typedef  TYPE_1__ ps_struct_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  IDC_PS_SOURCETEXT ; 
 int PSF_SELECTPASTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(HWND hdlg, const ps_struct_t *ps_struct)
{
    WCHAR *str;

    if(ps_struct->flags & PSF_SELECTPASTE)
    {
        if(ps_struct->source_name)
            str = ps_struct->source_name;
        else
            str = ps_struct->link_source_name;

    }
    else
    {
        if(ps_struct->link_source_name)
            str = ps_struct->link_source_name;
        else
            str = ps_struct->source_name;

    }
    FUNC0(hdlg, IDC_PS_SOURCETEXT, str);
}