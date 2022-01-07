
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int nData; scalar_t__ pData; } ;
struct TYPE_5__ {int pDbPage; } ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtreePayload ;


 int SQLITE_OK ;
 scalar_t__ memcmp (scalar_t__*,scalar_t__*,int) ;
 int memmove (scalar_t__*,scalar_t__*,int) ;
 int memset (scalar_t__*,int ,int) ;
 int sqlite3PagerWrite (int ) ;

__attribute__((used)) static int btreeOverwriteContent(
  MemPage *pPage,
  u8 *pDest,
  const BtreePayload *pX,
  int iOffset,
  int iAmt
){
  int nData = pX->nData - iOffset;
  if( nData<=0 ){

    int i;
    for(i=0; i<iAmt && pDest[i]==0; i++){}
    if( i<iAmt ){
      int rc = sqlite3PagerWrite(pPage->pDbPage);
      if( rc ) return rc;
      memset(pDest + i, 0, iAmt - i);
    }
  }else{
    if( nData<iAmt ){


      int rc = btreeOverwriteContent(pPage, pDest+nData, pX, iOffset+nData,
                                 iAmt-nData);
      if( rc ) return rc;
      iAmt = nData;
    }
    if( memcmp(pDest, ((u8*)pX->pData) + iOffset, iAmt)!=0 ){
      int rc = sqlite3PagerWrite(pPage->pDbPage);
      if( rc ) return rc;




      memmove(pDest, ((u8*)pX->pData) + iOffset, iAmt);
    }
  }
  return SQLITE_OK;
}
