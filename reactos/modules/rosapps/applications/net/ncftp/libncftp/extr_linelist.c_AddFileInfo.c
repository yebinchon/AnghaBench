
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nFileInfos; TYPE_1__* last; TYPE_1__* first; } ;
struct TYPE_8__ {struct TYPE_8__* next; struct TYPE_8__* prev; } ;
typedef TYPE_1__* FileInfoPtr ;
typedef TYPE_2__* FileInfoListPtr ;
typedef int FileInfo ;


 scalar_t__ malloc (int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

FileInfoPtr
AddFileInfo(FileInfoListPtr list, FileInfoPtr src)
{
 FileInfoPtr lp;

 lp = (FileInfoPtr) malloc(sizeof(FileInfo));
 if (lp != ((void*)0)) {
  (void) memcpy(lp, src, sizeof(FileInfo));
  lp->next = ((void*)0);
  if (list->first == ((void*)0)) {
   list->first = list->last = lp;
   lp->prev = ((void*)0);
   list->nFileInfos = 1;
  } else {
   lp->prev = list->last;
   list->last->next = lp;
   list->last = lp;
   list->nFileInfos++;
  }
 }
 return lp;
}
