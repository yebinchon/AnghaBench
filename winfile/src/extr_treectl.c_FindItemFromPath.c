
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int szName; struct TYPE_3__* pParent; } ;
typedef scalar_t__ TCHAR ;
typedef TYPE_1__* PDNODE ;
typedef scalar_t__* LPTSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CHAR_BACKSLASH ;
 scalar_t__ CHAR_COLON ;
 scalar_t__ CHAR_NULL ;
 scalar_t__ FALSE ;
 scalar_t__ LB_ERR ;
 int LB_GETTEXT ;
 int MAXFILENAMELEN ;
 scalar_t__ SendMessage (int ,int ,scalar_t__,int ) ;
 scalar_t__ TRUE ;
 int lstrcmpi (scalar_t__*,int ) ;
 int lstrlen (scalar_t__*) ;

BOOL
FindItemFromPath(
   HWND hwndLB,
   LPTSTR lpszPath,
   BOOL bReturnParent,
   DWORD *pIndex,
   PDNODE *ppNode)
{
  register DWORD i;
  register LPTSTR p;
  PDNODE pNode;
  DWORD iPreviousNode;
  PDNODE pPreviousNode;
  TCHAR szElement[1+MAXFILENAMELEN+1];

  if (pIndex) {
   *pIndex = (DWORD)-1;
  }
  if (ppNode) {
   *ppNode = ((void*)0);
  }

  if (!lpszPath || lstrlen(lpszPath) < 3 || lpszPath[1] != CHAR_COLON) {
      return FALSE;
  }

  i = 0;
  iPreviousNode = (DWORD)-1;
  pPreviousNode = ((void*)0);

  while (*lpszPath)
    {



      szElement[1] = CHAR_NULL;


      p = szElement;

      while (*lpszPath && *lpszPath != CHAR_BACKSLASH)
          *p++ = *lpszPath++;



      if (szElement[1] == CHAR_COLON)
          *p++ = CHAR_BACKSLASH;


      *p = CHAR_NULL;



      if (*lpszPath)
          lpszPath++;

      else if (bReturnParent)
        {



    if (pIndex) {
     *pIndex = iPreviousNode;
    }
          if (ppNode) {
              *ppNode = pPreviousNode;
          }
          return TRUE;
        }

      while (TRUE)
        {

    if (SendMessage(hwndLB, LB_GETTEXT, i, (LPARAM)&pNode) == LB_ERR)
    {
     if (pIndex) {
      *pIndex = iPreviousNode;
     }
     if (ppNode) {
      *ppNode = pPreviousNode;
     }
              return FALSE;
    }

          if (pNode->pParent == pPreviousNode)
            {
              if (!lstrcmpi(szElement, pNode->szName))
                {

      iPreviousNode = i;
                  pPreviousNode = pNode;
                  break;
                }
            }
          i++;
        }
    }
  if (pIndex) {
   *pIndex = iPreviousNode;
  }
  if (ppNode) {
      *ppNode = pPreviousNode;
  }

  return TRUE;
}
