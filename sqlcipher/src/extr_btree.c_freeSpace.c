
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {unsigned char* aData; int hdrOffset; int childPtrSize; int nFree; TYPE_1__* pBt; int pDbPage; } ;
struct TYPE_5__ {int usableSize; int btsFlags; int mutex; } ;
typedef TYPE_2__ MemPage ;


 int BTS_FAST_SECURE ;
 scalar_t__ CORRUPT_DB ;
 int SQLITE_CORRUPT_PAGE (TYPE_2__*) ;
 int SQLITE_OK ;
 int assert (int) ;
 int get2byte (unsigned char*) ;
 int memset (unsigned char*,int ,int) ;
 int put2byte (unsigned char*,int) ;
 int sqlite3PagerIswriteable (int ) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static int freeSpace(MemPage *pPage, u16 iStart, u16 iSize){
  u16 iPtr;
  u16 iFreeBlk;
  u8 hdr;
  u8 nFrag = 0;
  u16 iOrigSize = iSize;
  u16 x;
  u32 iEnd = iStart + iSize;
  unsigned char *data = pPage->aData;

  assert( pPage->pBt!=0 );
  assert( sqlite3PagerIswriteable(pPage->pDbPage) );
  assert( CORRUPT_DB || iStart>=pPage->hdrOffset+6+pPage->childPtrSize );
  assert( CORRUPT_DB || iEnd <= pPage->pBt->usableSize );
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  assert( iSize>=4 );
  assert( iStart<=pPage->pBt->usableSize-4 );




  hdr = pPage->hdrOffset;
  iPtr = hdr + 1;
  if( data[iPtr+1]==0 && data[iPtr]==0 ){
    iFreeBlk = 0;
  }else{
    while( (iFreeBlk = get2byte(&data[iPtr]))<iStart ){
      if( iFreeBlk<iPtr+4 ){
        if( iFreeBlk==0 ) break;
        return SQLITE_CORRUPT_PAGE(pPage);
      }
      iPtr = iFreeBlk;
    }
    if( iFreeBlk>pPage->pBt->usableSize-4 ){
      return SQLITE_CORRUPT_PAGE(pPage);
    }
    assert( iFreeBlk>iPtr || iFreeBlk==0 );







    if( iFreeBlk && iEnd+3>=iFreeBlk ){
      nFrag = iFreeBlk - iEnd;
      if( iEnd>iFreeBlk ) return SQLITE_CORRUPT_PAGE(pPage);
      iEnd = iFreeBlk + get2byte(&data[iFreeBlk+2]);
      if( iEnd > pPage->pBt->usableSize ){
        return SQLITE_CORRUPT_PAGE(pPage);
      }
      iSize = iEnd - iStart;
      iFreeBlk = get2byte(&data[iFreeBlk]);
    }





    if( iPtr>hdr+1 ){
      int iPtrEnd = iPtr + get2byte(&data[iPtr+2]);
      if( iPtrEnd+3>=iStart ){
        if( iPtrEnd>iStart ) return SQLITE_CORRUPT_PAGE(pPage);
        nFrag += iStart - iPtrEnd;
        iSize = iEnd - iPtr;
        iStart = iPtr;
      }
    }
    if( nFrag>data[hdr+7] ) return SQLITE_CORRUPT_PAGE(pPage);
    data[hdr+7] -= nFrag;
  }
  x = get2byte(&data[hdr+5]);
  if( iStart<=x ){



    if( iStart<x || iPtr!=hdr+1 ) return SQLITE_CORRUPT_PAGE(pPage);
    put2byte(&data[hdr+1], iFreeBlk);
    put2byte(&data[hdr+5], iEnd);
  }else{

    put2byte(&data[iPtr], iStart);
  }
  if( pPage->pBt->btsFlags & BTS_FAST_SECURE ){


    memset(&data[iStart], 0, iSize);
  }
  put2byte(&data[iStart], iFreeBlk);
  put2byte(&data[iStart+2], iSize);
  pPage->nFree += iOrigSize;
  return SQLITE_OK;
}
