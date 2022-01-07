
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nField; TYPE_2__* pKeyInfo; int * aMem; } ;
typedef TYPE_1__ UnpackedRecord ;
struct TYPE_6__ {int nKeyField; scalar_t__ aSortOrder; int db; } ;
typedef int Mem ;
typedef TYPE_2__ KeyInfo ;


 size_t ROUND8 (int) ;
 int assert (int) ;
 scalar_t__ sqlite3DbMallocRaw (int ,int) ;

UnpackedRecord *sqlite3VdbeAllocUnpackedRecord(
  KeyInfo *pKeyInfo
){
  UnpackedRecord *p;
  int nByte;
  nByte = ROUND8(sizeof(UnpackedRecord)) + sizeof(Mem)*(pKeyInfo->nKeyField+1);
  p = (UnpackedRecord *)sqlite3DbMallocRaw(pKeyInfo->db, nByte);
  if( !p ) return 0;
  p->aMem = (Mem*)&((char*)p)[ROUND8(sizeof(UnpackedRecord))];
  assert( pKeyInfo->aSortOrder!=0 );
  p->pKeyInfo = pKeyInfo;
  p->nField = pKeyInfo->nKeyField + 1;
  return p;
}
