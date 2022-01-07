
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int szName; struct TYPE_4__* pParent; } ;
typedef int TCHAR ;
typedef TYPE_1__* PDNODE ;
typedef scalar_t__ INT ;


 int OutputDebugString (int *) ;
 int TEXT (char*) ;
 scalar_t__ lstrcmpi (int ,int ) ;
 int wsprintf (int *,int ,int ,int ,scalar_t__) ;

INT
ComparePath(PDNODE p1, PDNODE p2)
{
   INT ret;

   if ((p1 == p2) || (!p1) || (!p2)) {

      return 0;

   } else {

      ret = ComparePath(p1->pParent, p2->pParent);

      if (ret == 0) {


         ret = lstrcmpi(p1->szName, p2->szName);
      }


      return ret;
   }
}
