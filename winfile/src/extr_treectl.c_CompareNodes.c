
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nLevels; struct TYPE_6__* pParent; } ;
typedef TYPE_1__* PDNODE ;
typedef scalar_t__ INT ;


 int ASSERT (int) ;
 scalar_t__ ComparePath (TYPE_1__*,TYPE_1__*) ;

INT
CompareNodes(PDNODE p1, PDNODE p2)
{
   PDNODE p1save, p2save;
   INT ret;

   ASSERT(p1 && p2);

   p1save = p1;
   p2save = p2;



   while (p1->nLevels > p2->nLevels)
      p1 = p1->pParent;

   while (p2->nLevels > p1->nLevels)
      p2 = p2->pParent;



   ASSERT(p1 && p2);

   ret = ComparePath(p1, p2);

   if (ret == 0)
      ret = (INT)p1save->nLevels - (INT)p2save->nLevels;

   return ret;
}
