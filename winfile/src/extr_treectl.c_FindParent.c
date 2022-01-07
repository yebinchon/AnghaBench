
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nLevels; } ;
typedef TYPE_1__* PDNODE ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef scalar_t__ BYTE ;


 scalar_t__ LB_ERR ;
 int LB_GETTEXT ;
 scalar_t__ SendMessage (int ,int ,scalar_t__,int ) ;
 scalar_t__ TRUE ;

PDNODE
FindParent(
   INT iLevelParent,
   INT iStartInd,
   HWND hwndLB)
{
   PDNODE pNode;

   while (TRUE) {
      if (SendMessage(hwndLB, LB_GETTEXT, iStartInd, (LPARAM)&pNode) == LB_ERR)
         return ((void*)0);

      if (pNode->nLevels == (BYTE)iLevelParent) {

         SendMessage(hwndLB, LB_GETTEXT, iStartInd, (LPARAM)&pNode);
         return pNode;
      }

      iStartInd--;
   }
}
