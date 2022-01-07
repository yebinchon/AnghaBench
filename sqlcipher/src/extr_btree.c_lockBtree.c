
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef void* u16 ;
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {int btsFlags; scalar_t__ pageSize; int usableSize; int autoVacuum; int incrVacuum; int maxLocal; scalar_t__ maxLeaf; int max1bytePayload; TYPE_1__* pPage1; scalar_t__ nPage; void* minLeaf; void* minLocal; TYPE_3__* db; int pPager; int mutex; } ;
struct TYPE_11__ {int* aData; } ;
typedef TYPE_1__ MemPage ;
typedef TYPE_2__ BtShared ;


 int BTS_NO_WAL ;
 int BTS_PAGESIZE_FIXED ;
 int BTS_READ_ONLY ;
 scalar_t__ MX_CELL_SIZE (TYPE_2__*) ;
 int SQLITE_CORRUPT_BKPT ;
 scalar_t__ SQLITE_DEFAULT_SYNCHRONOUS ;
 scalar_t__ SQLITE_DEFAULT_WAL_SYNCHRONOUS ;
 scalar_t__ SQLITE_MAX_PAGE_SIZE ;
 int SQLITE_NOTADB ;
 int SQLITE_OK ;
 int SQLITE_ResetDatabase ;
 int assert (int) ;
 int btreeGetPage (TYPE_2__*,int,TYPE_1__**,int ) ;
 int freeTempSpace (TYPE_2__*) ;
 scalar_t__ get4byte (int*) ;
 scalar_t__ memcmp (int*,...) ;
 int releasePageOne (TYPE_1__*) ;
 int setDefaultSyncFlag (TYPE_2__*,scalar_t__) ;
 int sqlite3PagerOpenWal (int ,int*) ;
 int sqlite3PagerPagecount (int ,int*) ;
 int sqlite3PagerSetPagesize (int ,scalar_t__*,scalar_t__) ;
 int sqlite3PagerSharedLock (int ) ;
 scalar_t__ sqlite3WritableSchema (TYPE_3__*) ;
 int sqlite3_mutex_held (int ) ;
 char* zMagicHeader ;

__attribute__((used)) static int lockBtree(BtShared *pBt){
  int rc;
  MemPage *pPage1;
  u32 nPage;
  u32 nPageFile = 0;
  u32 nPageHeader;

  assert( sqlite3_mutex_held(pBt->mutex) );
  assert( pBt->pPage1==0 );
  rc = sqlite3PagerSharedLock(pBt->pPager);
  if( rc!=SQLITE_OK ) return rc;
  rc = btreeGetPage(pBt, 1, &pPage1, 0);
  if( rc!=SQLITE_OK ) return rc;




  nPage = nPageHeader = get4byte(28+(u8*)pPage1->aData);
  sqlite3PagerPagecount(pBt->pPager, (int*)&nPageFile);
  if( nPage==0 || memcmp(24+(u8*)pPage1->aData, 92+(u8*)pPage1->aData,4)!=0 ){
    nPage = nPageFile;
  }
  if( (pBt->db->flags & SQLITE_ResetDatabase)!=0 ){
    nPage = 0;
  }
  if( nPage>0 ){
    u32 pageSize;
    u32 usableSize;
    u8 *page1 = pPage1->aData;
    rc = SQLITE_NOTADB;



    if( memcmp(page1, zMagicHeader, 16)!=0 ){
      goto page1_init_failed;
    }
    if( page1[18]>2 ){
      pBt->btsFlags |= BTS_READ_ONLY;
    }
    if( page1[19]>2 ){
      goto page1_init_failed;
    }
    if( page1[19]==2 && (pBt->btsFlags & BTS_NO_WAL)==0 ){
      int isOpen = 0;
      rc = sqlite3PagerOpenWal(pBt->pPager, &isOpen);
      if( rc!=SQLITE_OK ){
        goto page1_init_failed;
      }else{
        setDefaultSyncFlag(pBt, SQLITE_DEFAULT_WAL_SYNCHRONOUS+1);
        if( isOpen==0 ){
          releasePageOne(pPage1);
          return SQLITE_OK;
        }
      }
      rc = SQLITE_NOTADB;
    }else{
      setDefaultSyncFlag(pBt, SQLITE_DEFAULT_SYNCHRONOUS+1);
    }
    if( memcmp(&page1[21], "\100\040\040",3)!=0 ){
      goto page1_init_failed;
    }



    pageSize = (page1[16]<<8) | (page1[17]<<16);


    if( ((pageSize-1)&pageSize)!=0
     || pageSize>SQLITE_MAX_PAGE_SIZE
     || pageSize<=256
    ){
      goto page1_init_failed;
    }
    pBt->btsFlags |= BTS_PAGESIZE_FIXED;
    assert( (pageSize & 7)==0 );







    usableSize = pageSize - page1[20];
    if( (u32)pageSize!=pBt->pageSize ){






      releasePageOne(pPage1);
      pBt->usableSize = usableSize;
      pBt->pageSize = pageSize;
      freeTempSpace(pBt);
      rc = sqlite3PagerSetPagesize(pBt->pPager, &pBt->pageSize,
                                   pageSize-usableSize);
      return rc;
    }
    if( sqlite3WritableSchema(pBt->db)==0 && nPage>nPageFile ){
      rc = SQLITE_CORRUPT_BKPT;
      goto page1_init_failed;
    }



    if( usableSize<480 ){
      goto page1_init_failed;
    }
    pBt->pageSize = pageSize;
    pBt->usableSize = usableSize;

    pBt->autoVacuum = (get4byte(&page1[36 + 4*4])?1:0);
    pBt->incrVacuum = (get4byte(&page1[36 + 7*4])?1:0);

  }
  pBt->maxLocal = (u16)((pBt->usableSize-12)*64/255 - 23);
  pBt->minLocal = (u16)((pBt->usableSize-12)*32/255 - 23);
  pBt->maxLeaf = (u16)(pBt->usableSize - 35);
  pBt->minLeaf = (u16)((pBt->usableSize-12)*32/255 - 23);
  if( pBt->maxLocal>127 ){
    pBt->max1bytePayload = 127;
  }else{
    pBt->max1bytePayload = (u8)pBt->maxLocal;
  }
  assert( pBt->maxLeaf + 23 <= MX_CELL_SIZE(pBt) );
  pBt->pPage1 = pPage1;
  pBt->nPage = nPage;
  return SQLITE_OK;

page1_init_failed:
  releasePageOne(pPage1);
  pBt->pPage1 = 0;
  return rc;
}
