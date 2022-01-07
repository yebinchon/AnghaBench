
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sortKey; int sortOrder; int nFileInfos; int * vec; } ;
typedef int * FileInfoVec ;
typedef int FileInfoPtr ;
typedef TYPE_1__* FileInfoListPtr ;


 int BreadthFirstCmp ;
 int NameCmp ;
 int ReverseNameCmp ;
 int ReverseSizeCmp ;
 int ReverseTimeCmp ;
 int SizeCmp ;
 int TimeCmp ;
 int qsort (int *,size_t,int,int ) ;

void
SortFileInfoList(FileInfoListPtr list, int sortKey, int sortOrder)
{
 FileInfoVec fiv;
 FileInfoPtr fip;
 int i, j, n, n2;

 fiv = list->vec;
 if (fiv == ((void*)0))
  return;

 if (list->sortKey == sortKey) {
  if (list->sortOrder == sortOrder)
   return;


  n = list->nFileInfos;
  if (n > 1) {
   n2 = n / 2;
   for (i=0; i<n2; i++) {
    j = n - i - 1;
    fip = fiv[i];
    fiv[i] = fiv[j];
    fiv[j] = fip;
   }
  }

  list->sortOrder = sortOrder;
 } else if ((sortKey == 'n') && (sortOrder == 'a')) {
  qsort(fiv, (size_t) list->nFileInfos, sizeof(FileInfoPtr),
   NameCmp);
  list->sortKey = sortKey;
  list->sortOrder = sortOrder;
 } else if ((sortKey == 'n') && (sortOrder == 'd')) {
  qsort(fiv, (size_t) list->nFileInfos, sizeof(FileInfoPtr),
   ReverseNameCmp);
  list->sortKey = sortKey;
  list->sortOrder = sortOrder;
 } else if ((sortKey == 't') && (sortOrder == 'a')) {
  qsort(fiv, (size_t) list->nFileInfos, sizeof(FileInfoPtr),
   TimeCmp);
  list->sortKey = sortKey;
  list->sortOrder = sortOrder;
 } else if ((sortKey == 't') && (sortOrder == 'd')) {
  qsort(fiv, (size_t) list->nFileInfos, sizeof(FileInfoPtr),
   ReverseTimeCmp);
  list->sortKey = sortKey;
  list->sortOrder = sortOrder;
 } else if ((sortKey == 's') && (sortOrder == 'a')) {
  qsort(fiv, (size_t) list->nFileInfos, sizeof(FileInfoPtr),
   SizeCmp);
  list->sortKey = sortKey;
  list->sortOrder = sortOrder;
 } else if ((sortKey == 's') && (sortOrder == 'd')) {
  qsort(fiv, (size_t) list->nFileInfos, sizeof(FileInfoPtr),
   ReverseSizeCmp);
  list->sortKey = sortKey;
  list->sortOrder = sortOrder;
 } else if (sortKey == 'b') {

  list->sortKey = sortKey;
  list->sortOrder = sortOrder;
  qsort(fiv, (size_t) list->nFileInfos, sizeof(FileInfoPtr),
   BreadthFirstCmp);
 }
}
