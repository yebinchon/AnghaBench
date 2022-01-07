
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int szName; struct TYPE_3__* pParent; } ;
typedef TYPE_1__* PDNODE ;
typedef int LPTSTR ;


 int SZ_BACKSLASH ;
 int lstrcat (int ,int ) ;

VOID
GetTreePathIndirect(PDNODE pNode, register LPTSTR szDest)
{
   register PDNODE pParent;

   pParent = pNode->pParent;

   if (pParent)
      GetTreePathIndirect(pParent, szDest);

   lstrcat(szDest, pNode->szName);

   if (pParent)
      lstrcat(szDest, SZ_BACKSLASH);
}
