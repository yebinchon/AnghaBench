
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnpackedRecord ;


 int sqlite3VdbeRecordCompareWithSkip (int,void const*,int *,int ) ;

int sqlite3VdbeRecordCompare(
  int nKey1, const void *pKey1,
  UnpackedRecord *pPKey2
){
  return sqlite3VdbeRecordCompareWithSkip(nKey1, pKey1, pPKey2, 0);
}
