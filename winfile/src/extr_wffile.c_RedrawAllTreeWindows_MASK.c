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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  dwAttribs; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__* PDNODE ;
typedef  long LPARAM ;
typedef  int INT ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GW_CHILD ; 
 int /*<<< orphan*/  GW_HWNDNEXT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  IDCW_TREELISTBOX ; 
 int /*<<< orphan*/  INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LB_GETCOUNT ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int MAXPATHLEN ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,long) ; 
 scalar_t__ hwndMDIClient ; 

VOID FUNC7()
{
    HWND hwnd, hwndTree, hwndLB;
    int cItems, ctr;
    PDNODE pNode;
    DWORD dwAttribs;
    TCHAR szPathName[MAXPATHLEN * 2];


    for (hwnd = FUNC3(hwndMDIClient, GW_CHILD);
         hwnd;
         hwnd = FUNC3(hwnd, GW_HWNDNEXT))
    {
       if ((hwndTree = FUNC4(hwnd)))
       {
           hwndLB = FUNC0(hwndTree, IDCW_TREELISTBOX);

           //
           //  Search through all of the pNodes and update the
           //  attributes.
           //
           cItems = (INT)FUNC6(hwndLB, LB_GETCOUNT, 0, 0L);
           for (ctr = 0; ctr < cItems; ctr++)
           {
               FUNC6(hwndLB, LB_GETTEXT, ctr, (LPARAM)&pNode);

               //
               //  Set the attributes for this directory.
               //
               FUNC2(pNode, szPathName);
               if ((dwAttribs = FUNC1(szPathName)) != INVALID_FILE_ATTRIBUTES)
               {
                   pNode->dwAttribs = dwAttribs;
               }
           }

           FUNC5(hwndLB, NULL, FALSE);
       }
    }
}