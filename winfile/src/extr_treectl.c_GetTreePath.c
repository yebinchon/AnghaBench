
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {scalar_t__ pParent; } ;
typedef TYPE_1__* PDNODE ;
typedef int * LPTSTR ;


 int CHAR_NULL ;
 int GetTreePathIndirect (TYPE_1__*,int *) ;
 int lstrlen (int *) ;

VOID
GetTreePath(PDNODE pNode, register LPTSTR szDest)
{
   szDest[0] = CHAR_NULL;
   GetTreePathIndirect(pNode, szDest);




   if (pNode->pParent)
      szDest[lstrlen(szDest)-1] = CHAR_NULL;
}
