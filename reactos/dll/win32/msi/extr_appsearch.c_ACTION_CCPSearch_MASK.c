#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {int /*<<< orphan*/  db; } ;
struct TYPE_9__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIQUERY ;
typedef  TYPE_2__ MSIPACKAGE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  ITERATE_CCPSearch ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__**,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szCCPSearch ; 

UINT FUNC6(MSIPACKAGE *package)
{
    static const WCHAR query[] =  {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        'C','C','P','S','e','a','r','c','h',0};
    MSIQUERY *view;
    UINT r;

    if (FUNC3(package, szCCPSearch))
    {
        FUNC2("Skipping AppSearch action: already done in UI sequence\n");
        return ERROR_SUCCESS;
    }
    else
        FUNC4(package, szCCPSearch);

    r = FUNC1(package->db, &view, query);
    if (r != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    r = FUNC0(view, NULL, ITERATE_CCPSearch, package);
    FUNC5(&view->hdr);
    return r;
}