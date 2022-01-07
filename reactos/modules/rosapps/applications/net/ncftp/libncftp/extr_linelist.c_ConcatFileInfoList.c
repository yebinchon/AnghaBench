
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* first; } ;
struct TYPE_8__ {void* plug; void* rlinkto; void* rname; void* lname; void* relname; struct TYPE_8__* next; } ;
typedef TYPE_1__* FileInfoPtr ;
typedef TYPE_2__* FileInfoListPtr ;
typedef TYPE_1__ FileInfo ;


 int * AddFileInfo (TYPE_2__*,TYPE_1__*) ;
 void* StrDup (void*) ;

int
ConcatFileInfoList(FileInfoListPtr dst, FileInfoListPtr src)
{
 FileInfoPtr lp, lp2;
 FileInfo newfi;

 for (lp = src->first; lp != ((void*)0); lp = lp2) {
  lp2 = lp->next;
  newfi = *lp;
  newfi.relname = StrDup(lp->relname);
  newfi.lname = StrDup(lp->lname);
  newfi.rname = StrDup(lp->rname);
  newfi.rlinkto = StrDup(lp->rlinkto);
  newfi.plug = StrDup(lp->plug);
  if (AddFileInfo(dst, &newfi) == ((void*)0))
   return (-1);
 }
 return (0);
}
