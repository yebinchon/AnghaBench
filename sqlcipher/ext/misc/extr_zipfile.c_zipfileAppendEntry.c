
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int const u8 ;
struct TYPE_7__ {int szCurrent; int const* aBuffer; } ;
typedef TYPE_1__ ZipfileTab ;
struct TYPE_8__ {int iDataOff; } ;
typedef TYPE_2__ ZipfileEntry ;


 int SQLITE_OK ;
 int zipfileAppendData (TYPE_1__*,int const*,int) ;
 int zipfileSerializeLFH (TYPE_2__*,int const*) ;

__attribute__((used)) static int zipfileAppendEntry(
  ZipfileTab *pTab,
  ZipfileEntry *pEntry,
  const u8 *pData,
  int nData
){
  u8 *aBuf = pTab->aBuffer;
  int nBuf;
  int rc;

  nBuf = zipfileSerializeLFH(pEntry, aBuf);
  rc = zipfileAppendData(pTab, aBuf, nBuf);
  if( rc==SQLITE_OK ){
    pEntry->iDataOff = pTab->szCurrent;
    rc = zipfileAppendData(pTab, pData, nData);
  }

  return rc;
}
