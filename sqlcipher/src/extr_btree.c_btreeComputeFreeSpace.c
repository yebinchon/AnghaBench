
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {scalar_t__ pgno; int* aData; int isInit; int hdrOffset; int childPtrSize; int nCell; int nFree; TYPE_1__* pBt; int pDbPage; } ;
struct TYPE_6__ {scalar_t__ db; int usableSize; int mutex; } ;
typedef TYPE_2__ MemPage ;


 int SQLITE_CORRUPT_PAGE (TYPE_2__*) ;
 int SQLITE_OK ;
 int assert (int) ;
 int get2byte (int*) ;
 int get2byteNotZero (int*) ;
 int* sqlite3PagerGetData (int ) ;
 TYPE_2__* sqlite3PagerGetExtra (int ) ;
 scalar_t__ sqlite3PagerPagenumber (int ) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static int btreeComputeFreeSpace(MemPage *pPage){
  int pc;
  u8 hdr;
  u8 *data;
  int usableSize;
  int nFree;
  int top;
  int iCellFirst;
  int iCellLast;

  assert( pPage->pBt!=0 );
  assert( pPage->pBt->db!=0 );
  assert( sqlite3_mutex_held(pPage->pBt->mutex) );
  assert( pPage->pgno==sqlite3PagerPagenumber(pPage->pDbPage) );
  assert( pPage == sqlite3PagerGetExtra(pPage->pDbPage) );
  assert( pPage->aData == sqlite3PagerGetData(pPage->pDbPage) );
  assert( pPage->isInit==1 );
  assert( pPage->nFree<0 );

  usableSize = pPage->pBt->usableSize;
  hdr = pPage->hdrOffset;
  data = pPage->aData;



  top = get2byteNotZero(&data[hdr+5]);
  iCellFirst = hdr + 8 + pPage->childPtrSize + 2*pPage->nCell;
  iCellLast = usableSize - 4;





  pc = get2byte(&data[hdr+1]);
  nFree = data[hdr+7] + top;
  if( pc>0 ){
    u32 next, size;
    if( pc<iCellFirst ){



      return SQLITE_CORRUPT_PAGE(pPage);
    }
    while( 1 ){
      if( pc>iCellLast ){

        return SQLITE_CORRUPT_PAGE(pPage);
      }
      next = get2byte(&data[pc]);
      size = get2byte(&data[pc+2]);
      nFree = nFree + size;
      if( next<=pc+size+3 ) break;
      pc = next;
    }
    if( next>0 ){

      return SQLITE_CORRUPT_PAGE(pPage);
    }
    if( pc+size>(unsigned int)usableSize ){

      return SQLITE_CORRUPT_PAGE(pPage);
    }
  }
  if( nFree>usableSize ){
    return SQLITE_CORRUPT_PAGE(pPage);
  }
  pPage->nFree = (u16)(nFree - iCellFirst);
  return SQLITE_OK;
}
