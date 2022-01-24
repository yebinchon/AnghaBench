#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  db; scalar_t__ ExecuteSequenceRun; } ;
struct TYPE_7__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIQUERY ;
typedef  TYPE_2__ MSIPACKAGE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  ITERATE_Actions ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__**,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szSourceDir ; 

__attribute__((used)) static UINT FUNC5(MSIPACKAGE *package)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ', 'F','R','O','M',' ',
        '`','I','n','s','t','a','l','l','E','x','e','c','u','t','e',
        'S','e','q','u','e','n','c','e','`',' ', 'W','H','E','R','E',' ',
        '`','S','e','q','u','e','n','c','e','`',' ', '>',' ','0',' ',
        'O','R','D','E','R',' ', 'B','Y',' ','`','S','e','q','u','e','n','c','e','`',0};
    MSIQUERY *view;
    UINT rc;

    if (package->ExecuteSequenceRun)
    {
        FUNC2("Execute Sequence already Run\n");
        return ERROR_SUCCESS;
    }

    package->ExecuteSequenceRun = TRUE;

    rc = FUNC1(package->db, &view, query);
    if (rc == ERROR_SUCCESS)
    {
        FUNC2("Running the actions\n");

        FUNC3( package->db, szSourceDir, NULL, -1 );
        rc = FUNC0(view, NULL, ITERATE_Actions, package);
        FUNC4(&view->hdr);
    }
    return rc;
}