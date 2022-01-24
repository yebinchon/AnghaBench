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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {scalar_t__ nLevels; struct TYPE_3__* pParent; int /*<<< orphan*/  szName; } ;
typedef  TYPE_1__* PDNODE ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  long LPARAM ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HWND ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  DNODE ;
typedef  scalar_t__ BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ATTR_HS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FS_GETDIRECTORY ; 
 TYPE_1__* FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  GWL_ATTRIBS ; 
 int /*<<< orphan*/  GWL_READLEVEL ; 
 int /*<<< orphan*/  GWL_VIEW ; 
 int /*<<< orphan*/  GW_CHILD ; 
 int /*<<< orphan*/  GW_HWNDNEXT ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  IDCW_TREELISTBOX ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_GETCOUNT ; 
 int /*<<< orphan*/  LB_GETITEMDATA ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int /*<<< orphan*/  LB_INSERTSTRING ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int VIEW_PLUSES ; 
 scalar_t__ hwndMDIClient ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

BOOL
FUNC16(
   HWND hwndTC,
   HWND hwndLB,
   LPWSTR szDir)
{
   HWND hwndSrc, hwndT;
   WCHAR szSrc[MAXPATHLEN];
   DWORD dwView;
   DWORD dwAttribs;

   //
   // we need to match on these attributes as well as the name
   //
   dwView    = FUNC7(FUNC5(hwndTC), GWL_VIEW) & VIEW_PLUSES;
   dwAttribs = FUNC7(FUNC5(hwndTC), GWL_ATTRIBS) & ATTR_HS;

   //
   // get the dir of this new window for compare below
   //
   for (hwndSrc = FUNC6(hwndMDIClient, GW_CHILD); hwndSrc;
      hwndSrc = FUNC6(hwndSrc, GW_HWNDNEXT)) {

      //
      // avoid finding ourselves, make sure has a tree
      // and make sure the tree attributes match
      //
      if ((hwndT = FUNC8(hwndSrc)) &&
         (hwndT != hwndTC) &&
         !FUNC7(hwndT, GWL_READLEVEL) &&
         (dwView  == (DWORD)(FUNC7(hwndSrc, GWL_VIEW) & VIEW_PLUSES)) &&
         (dwAttribs == (DWORD)(FUNC7(hwndSrc, GWL_ATTRIBS) & ATTR_HS))) {

         FUNC11(hwndSrc, FS_GETDIRECTORY, FUNC2(szSrc), (LPARAM)szSrc);
         FUNC12(szSrc);

         if (!FUNC13(szDir, szSrc))     // are they the same?
            break;                  // yes, do stuff below
      }
   }

   if (hwndSrc) {

      HWND hwndLBSrc;
      PDNODE pNode, pNewNode, pLastParent;
      INT i;

      hwndLBSrc = FUNC4(hwndT, IDCW_TREELISTBOX);

      //
      // don't seal from a tree that hasn't been read yet!
      //
      if ((INT)FUNC11(hwndLBSrc, LB_GETCOUNT, 0, 0L) == 0) {
         return FALSE;
      }

      pLastParent = NULL;

      for (i = 0; FUNC11(hwndLBSrc, LB_GETTEXT, i, (LPARAM)&pNode) != LB_ERR; i++) {

         if ((pNewNode = (PDNODE)FUNC9(LPTR, sizeof(DNODE) + FUNC1(FUNC15(pNode->szName))))) {

            *pNewNode = *pNode;                             // dup the node
            FUNC14(pNewNode->szName, pNode->szName);       // and the name

            //
            // accelerate the case where we are on the same level to avoid
            // slow linear search!
            //
            if (pLastParent && pLastParent->nLevels == (BYTE)(pNode->nLevels - (BYTE)1)) {
               pNewNode->pParent = pLastParent;
            } else {
               pNewNode->pParent = pLastParent = FUNC3(pNode->nLevels-1, i-1, hwndLB);
            }

            FUNC11(hwndLB, LB_INSERTSTRING, i, (LPARAM)pNewNode);
            FUNC0((PDNODE)FUNC11(hwndLB, LB_GETITEMDATA, i, 0L) == pNewNode);
         }
      }

      /*
       *  Reset the max text extent value for the new window.
       */
      FUNC10(hwndLB, FALSE);

      return TRUE;    // successful steal
   }

   return FALSE;
}