#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msi_dialog ;
typedef  size_t UINT ;
struct TYPE_2__ {int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  control_type; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 size_t NUM_CONTROL_TYPES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* msi_dialog_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC5( MSIRECORD *rec, LPVOID param )
{
    msi_dialog *dialog = param;
    LPCWSTR control_type;
    UINT i;

    /* find and call the function that can create this type of control */
    control_type = FUNC1( rec, 3 );
    for( i=0; i<NUM_CONTROL_TYPES; i++ )
        if (!FUNC3( msi_dialog_handler[i].control_type, control_type ))
            break;
    if( i != NUM_CONTROL_TYPES )
        msi_dialog_handler[i].func( dialog, rec );
    else
        FUNC0("no handler for element type %s\n", FUNC2(control_type));

    return ERROR_SUCCESS;
}