
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* first; } ;
struct TYPE_4__ {int line; struct TYPE_4__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__* LineListPtr ;
typedef int FileInfoListPtr ;


 scalar_t__ ConcatFileToFileInfoList (int ,int ) ;
 int InitFileInfoList (int ) ;

int
LineListToFileInfoList(LineListPtr src, FileInfoListPtr dst)
{
 LinePtr lp, lp2;

 InitFileInfoList(dst);
 for (lp = src->first; lp != ((void*)0); lp = lp2) {
  lp2 = lp->next;
  if (ConcatFileToFileInfoList(dst, lp->line) < 0)
   return (-1);
 }
 return (0);
}
