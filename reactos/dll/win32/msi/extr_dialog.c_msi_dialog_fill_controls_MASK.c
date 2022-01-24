#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  name; TYPE_3__* package; } ;
typedef  TYPE_1__ msi_dialog ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_11__ {int /*<<< orphan*/  db; } ;
struct TYPE_10__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_2__ MSIQUERY ;
typedef  TYPE_3__ MSIPACKAGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_dialog_create_controls ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC6( msi_dialog *dialog )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        'C','o','n','t','r','o','l',' ','W','H','E','R','E',' ',
        '`','D','i','a','l','o','g','_','`',' ','=',' ','\'','%','s','\'',0};
    UINT r;
    MSIQUERY *view;
    MSIPACKAGE *package = dialog->package;

    FUNC3("%p %s\n", dialog, FUNC4(dialog->name) );

    /* query the Control table for all the elements of the control */
    r = FUNC2( package->db, &view, query, dialog->name );
    if( r != ERROR_SUCCESS )
    {
        FUNC0("query failed for dialog %s\n", FUNC4(dialog->name));
        return ERROR_INVALID_PARAMETER;
    }

    r = FUNC1( view, 0, msi_dialog_create_controls, dialog );
    FUNC5( &view->hdr );
    return r;
}