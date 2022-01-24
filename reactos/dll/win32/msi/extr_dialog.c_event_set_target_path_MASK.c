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
struct TYPE_9__ {TYPE_3__* package; } ;
typedef  TYPE_1__ msi_dialog ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_11__ {int /*<<< orphan*/  db; } ;
struct TYPE_10__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_2__ MSIRECORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szSelectionPath ; 

__attribute__((used)) static UINT FUNC6( msi_dialog *dialog, const WCHAR *argument )
{
    WCHAR *path = FUNC3( dialog->package->db, argument );
    MSIRECORD *rec = FUNC0( 1 );
    UINT r = ERROR_SUCCESS;

    FUNC1( rec, 1, path );
    FUNC4( dialog->package, szSelectionPath, rec );
    if (path)
    {
        /* failure to set the path halts the executing of control events */
        r = FUNC2( dialog->package, argument, path );
        FUNC5( path );
    }
    FUNC5( &rec->hdr );
    return r;
}