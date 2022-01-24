#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  retval; } ;
typedef  TYPE_1__ msi_dialog ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_11__ {TYPE_1__* dialog; } ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  IDOK ; 
 TYPE_1__* FUNC0 (TYPE_2__*,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dialog_event_handler ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static INT FUNC3( MSIPACKAGE *package, const WCHAR *name, msi_dialog *parent, BOOL destroy_modeless )
{
    msi_dialog *dialog;
    UINT r;
    INT retval;

    /* create a new dialog */
    dialog = FUNC0( package, name, parent, dialog_event_handler );
    if (dialog)
    {
        /* kill the current modeless dialog */
        if (destroy_modeless && package->dialog)
        {
            FUNC2( package->dialog );
            package->dialog = NULL;
        }

        /* modeless dialogs return an error message */
        r = FUNC1( dialog );
        if (r == ERROR_SUCCESS)
        {
            retval = dialog->retval;
            FUNC2( dialog );
            return retval;
        }
        else
        {
            package->dialog = dialog;
            return IDOK;
        }
    }
    else return 0;
}