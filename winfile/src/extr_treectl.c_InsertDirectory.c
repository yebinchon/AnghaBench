
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ nLevels; int wFlags; scalar_t__ dwAttribs; int szName; scalar_t__ dwNetType; struct TYPE_9__* pParent; } ;
typedef int TCHAR ;
typedef TYPE_1__* PDNODE ;
typedef int LPTSTR ;
typedef long LPARAM ;
typedef int INT ;
typedef int HWND ;
typedef scalar_t__ DWORD ;
typedef int DNODE ;
typedef scalar_t__ BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ ByteCountOf (scalar_t__) ;
 scalar_t__ CALC_EXTENT (TYPE_1__*) ;
 int CompareNodes (TYPE_1__*,TYPE_1__*) ;
 int GWL_XTREEMAX ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ GetFileAttributes (int *) ;
 scalar_t__ GetRealExtent (TYPE_1__*,int ,int *,scalar_t__*) ;
 int GetTreePath (TYPE_1__*,int *) ;
 scalar_t__ GetWindowLongPtr (int ,int ) ;
 int IDCW_TREELISTBOX ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 scalar_t__ IsLFN (int ) ;
 int LB_ERR ;
 int LB_GETCOUNT ;
 int LB_GETTEXT ;
 int LB_INSERTSTRING ;
 int LB_SETHORIZONTALEXTENT ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int MAXPATHLEN ;
 scalar_t__ SendMessage (int ,int ,int,long) ;
 int SetWindowLongPtr (int ,int ,scalar_t__) ;
 int TF_EXPANDED ;
 int TF_HASCHILDREN ;
 int TF_LASTLEVELENTRY ;
 int TF_LFN ;
 int TF_LOWERCASE ;
 int lstrcpy (int ,int ) ;
 scalar_t__ lstrlen (int ) ;

INT
InsertDirectory(
   HWND hwndTreeCtl,
   PDNODE pParentNode,
   INT iParentNode,
   LPTSTR szName,
   PDNODE *ppNode,
   BOOL bCasePreserved,
   BOOL bPartialSort,
   DWORD dwAttribs)
{
   UINT len, x, xTreeMax;
   PDNODE pNode, pMid;
   HWND hwndLB;
   INT iMin, iMax, iMid;
   TCHAR szPathName[MAXPATHLEN * 2];


   len = lstrlen(szName);

   pNode = (PDNODE)LocalAlloc(LPTR, sizeof(DNODE) + ByteCountOf(len));
   if (!pNode)
   {
      if (ppNode)
      {
         *ppNode = ((void*)0);
      }
      return (0);
   }

   pNode->pParent = pParentNode;
   pNode->nLevels = pParentNode ? (pParentNode->nLevels + (BYTE)1) : (BYTE)0;
   pNode->wFlags = 0;
   pNode->dwNetType = (DWORD)-1;
   if (!bCasePreserved)
      pNode->wFlags |= TF_LOWERCASE;

   lstrcpy(pNode->szName, szName);

   if (pParentNode)
      pParentNode->wFlags |= TF_HASCHILDREN | TF_EXPANDED;

   hwndLB = GetDlgItem(hwndTreeCtl, IDCW_TREELISTBOX);





   x = GetRealExtent(pNode, hwndLB, ((void*)0), &len);
   x = CALC_EXTENT(pNode);

   xTreeMax = GetWindowLongPtr(hwndTreeCtl, GWL_XTREEMAX);
   if (x > xTreeMax)
   {
       SetWindowLongPtr(hwndTreeCtl, GWL_XTREEMAX, x);
       SendMessage(hwndLB, LB_SETHORIZONTALEXTENT, x, 0L);
   }

   iMax = (INT)SendMessage(hwndLB, LB_GETCOUNT, 0, 0L);

   if (iMax > 0)
   {


      iMin = iParentNode + 1;
      iMax--;




      SendMessage(hwndLB, LB_GETTEXT, iMax, (LPARAM)&pMid);

      if (bPartialSort && CompareNodes(pNode, pMid) > 0)
      {
         iMax++;
      }
      else
      {
      int iCmp;
         do
         {
            iMid = (iMax + iMin) / 2;

            SendMessage(hwndLB, LB_GETTEXT, iMid, (LPARAM)&pMid);

            iCmp = CompareNodes(pNode, pMid);
            if (iCmp == 0)
            {
                iMax = iMin = iMid;
            }
            else if (iCmp > 0)
               iMin = iMid + 1;
            else
               iMax = iMid - 1;

         } while (iMax > iMin);





         SendMessage(hwndLB, LB_GETTEXT, iMax, (LPARAM)&pMid);
         iCmp = CompareNodes(pNode, pMid);
         if (iCmp == 0)
         {
             if (ppNode)
             {
                 *ppNode = pMid;
             }
             return iMax;
         }

        if (iCmp > 0)
        {
            iMax++;
        }
      }
   }






   iMid = iMax - 1;

   while (iMid >= 0)
   {
      SendMessage(hwndLB, LB_GETTEXT, iMid--, (LPARAM)&pMid);
      if (pMid->nLevels == pNode->nLevels)
      {
         pMid->wFlags &= ~TF_LASTLEVELENTRY;
         break;
      }
      else if (pMid->nLevels < pNode->nLevels)
      {
         break;
      }
   }




   if (((INT)SendMessage(hwndLB, LB_GETTEXT, iMax, (LPARAM)&pMid) == LB_ERR) ||
       (pMid->nLevels < pNode->nLevels))
   {
      pNode->wFlags |= TF_LASTLEVELENTRY;
   }




   if (dwAttribs == INVALID_FILE_ATTRIBUTES)
   {
       GetTreePath(pNode, szPathName);
       if ((pNode->dwAttribs = GetFileAttributes(szPathName)) == INVALID_FILE_ATTRIBUTES)
       {
           pNode->dwAttribs = 0;
       }
   }
   else
   {
       pNode->dwAttribs = dwAttribs;
   }

   SendMessage(hwndLB, LB_INSERTSTRING, iMax, (LPARAM)pNode);

   if (ppNode)
   {
      *ppNode = pNode;
   }

   return (iMax);
}
