
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* first; } ;
struct TYPE_8__ {int * line; struct TYPE_8__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__* LineListPtr ;


 int * AddLine (TYPE_2__*,int *) ;
 int DisposeLineListContents (TYPE_2__*) ;
 int InitLineList (TYPE_2__*) ;

int
CopyLineList(LineListPtr dst, LineListPtr src)
{
 LinePtr lp, lp2;

 InitLineList(dst);
 for (lp = src->first; lp != ((void*)0); ) {
  lp2 = lp;
  lp = lp->next;
  if (lp2->line != ((void*)0)) {
   if (AddLine(dst, lp2->line) == ((void*)0)) {
    DisposeLineListContents(dst);
    return (-1);
   }
  }
 }
 return (0);
}
