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
 int /*<<< orphan*/  ITERATE_FindRelatedProducts ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,TYPE_1__**) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szFindRelatedProducts ; 
 int /*<<< orphan*/  szInstalled ; 

UINT FUNC7(MSIPACKAGE *package)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','U','p','g','r','a','d','e','`',0};
    MSIQUERY *view;
    UINT rc;

    if (FUNC4(package->db, szInstalled, 0))
    {
        FUNC2("Skipping FindRelatedProducts action: product already installed\n");
        return ERROR_SUCCESS;
    }
    if (FUNC3(package, szFindRelatedProducts))
    {
        FUNC2("Skipping FindRelatedProducts action: already done in UI sequence\n");
        return ERROR_SUCCESS;
    }
    else
        FUNC5(package, szFindRelatedProducts);

    rc = FUNC0(package->db, query, &view);
    if (rc != ERROR_SUCCESS)
        return ERROR_SUCCESS;
    
    rc = FUNC1(view, NULL, ITERATE_FindRelatedProducts, package);
    FUNC6(&view->hdr);
    return rc;
}