#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  control_cancel; int /*<<< orphan*/  control_default; } ;
typedef  TYPE_1__ msi_dialog ;
struct TYPE_13__ {int /*<<< orphan*/  (* handler ) (TYPE_1__*,TYPE_2__*,int) ;} ;
typedef  TYPE_2__ msi_control ;
typedef  int WPARAM ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int) ; 

__attribute__((used)) static LRESULT FUNC5( msi_dialog *dialog, WPARAM param, HWND hwnd )
{
    msi_control *control = NULL;

    FUNC0("%p %p %08lx\n", dialog, hwnd, param);

    switch (param)
    {
    case 1: /* enter */
        control = FUNC2( dialog, dialog->control_default );
        break;
    case 2: /* escape */
        control = FUNC2( dialog, dialog->control_cancel );
        break;
    default: 
        control = FUNC3( dialog, hwnd );
    }

    if( control )
    {
        if( control->handler )
        {
            control->handler( dialog, control, param );
            FUNC1( dialog );
        }
    }

    return 0;
}