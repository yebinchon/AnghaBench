#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  db; } ;
struct TYPE_8__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIQUERY ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  ITERATE_Actions ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

UINT FUNC5( MSIPACKAGE *package, LPCWSTR table )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','`','%','s','`',
         ' ','W','H','E','R','E',' ','`','S','e','q','u','e','n','c','e','`',' ',
         '>',' ','0',' ','O','R','D','E','R',' ','B','Y',' ',
         '`','S','e','q','u','e','n','c','e','`',0};
    MSIQUERY *view;
    UINT r;

    FUNC2("%p %s\n", package, FUNC3(table));

    r = FUNC1( package->db, &view, query, table );
    if (r == ERROR_SUCCESS)
    {
        r = FUNC0( view, NULL, ITERATE_Actions, package );
        FUNC4(&view->hdr);
    }
    return r;
}