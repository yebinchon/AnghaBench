
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UnpackedRecord ;
struct TYPE_5__ {TYPE_1__* pSorter; int * pUnpacked; } ;
struct TYPE_4__ {int pKeyInfo; } ;
typedef TYPE_2__ SortSubtask ;


 int sqlite3VdbeRecordCompare (int,void const*,int *) ;
 int sqlite3VdbeRecordUnpack (int ,int,void const*,int *) ;

__attribute__((used)) static int vdbeSorterCompare(
  SortSubtask *pTask,
  int *pbKey2Cached,
  const void *pKey1, int nKey1,
  const void *pKey2, int nKey2
){
  UnpackedRecord *r2 = pTask->pUnpacked;
  if( !*pbKey2Cached ){
    sqlite3VdbeRecordUnpack(pTask->pSorter->pKeyInfo, nKey2, pKey2, r2);
    *pbKey2Cached = 1;
  }
  return sqlite3VdbeRecordCompare(nKey1, pKey1, r2);
}
