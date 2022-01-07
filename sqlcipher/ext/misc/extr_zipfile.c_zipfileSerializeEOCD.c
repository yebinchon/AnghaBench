
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int iOffset; int nSize; int nEntryTotal; int nEntry; int iFirstDisk; int iDisk; } ;
typedef TYPE_1__ ZipfileEOCD ;


 int ZIPFILE_SIGNATURE_EOCD ;
 int zipfileWrite16 (int *,int ) ;
 int zipfileWrite32 (int *,int ) ;

__attribute__((used)) static int zipfileSerializeEOCD(ZipfileEOCD *p, u8 *aBuf){
  u8 *a = aBuf;
  zipfileWrite32(a, ZIPFILE_SIGNATURE_EOCD);
  zipfileWrite16(a, p->iDisk);
  zipfileWrite16(a, p->iFirstDisk);
  zipfileWrite16(a, p->nEntry);
  zipfileWrite16(a, p->nEntryTotal);
  zipfileWrite32(a, p->nSize);
  zipfileWrite32(a, p->iOffset);
  zipfileWrite16(a, 0);

  return a-aBuf;
}
