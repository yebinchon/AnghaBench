
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_5__ {int nExtra; int iVersionExtract; int flags; int iCompression; int mTime; int mDate; scalar_t__ nFile; int zFile; int szUncompressed; int szCompressed; int crc32; } ;
struct TYPE_4__ {int mUnixTime; TYPE_2__ cds; } ;
typedef TYPE_1__ ZipfileEntry ;
typedef TYPE_2__ ZipfileCDS ;


 int ZIPFILE_EXTRA_TIMESTAMP ;
 size_t ZIPFILE_LFH_FIXED_SZ ;
 int ZIPFILE_SIGNATURE_LFH ;
 int assert (int) ;
 int memcpy (int *,int ,int) ;
 int zipfileWrite16 (int *,int) ;
 int zipfileWrite32 (int *,int ) ;

__attribute__((used)) static int zipfileSerializeLFH(ZipfileEntry *pEntry, u8 *aBuf){
  ZipfileCDS *pCds = &pEntry->cds;
  u8 *a = aBuf;

  pCds->nExtra = 9;


  zipfileWrite32(a, ZIPFILE_SIGNATURE_LFH);
  zipfileWrite16(a, pCds->iVersionExtract);
  zipfileWrite16(a, pCds->flags);
  zipfileWrite16(a, pCds->iCompression);
  zipfileWrite16(a, pCds->mTime);
  zipfileWrite16(a, pCds->mDate);
  zipfileWrite32(a, pCds->crc32);
  zipfileWrite32(a, pCds->szCompressed);
  zipfileWrite32(a, pCds->szUncompressed);
  zipfileWrite16(a, (u16)pCds->nFile);
  zipfileWrite16(a, pCds->nExtra);
  assert( a==&aBuf[ZIPFILE_LFH_FIXED_SZ] );


  memcpy(a, pCds->zFile, (int)pCds->nFile);
  a += (int)pCds->nFile;


  zipfileWrite16(a, ZIPFILE_EXTRA_TIMESTAMP);
  zipfileWrite16(a, 5);
  *a++ = 0x01;
  zipfileWrite32(a, pEntry->mUnixTime);

  return a-aBuf;
}
