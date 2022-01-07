
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ isInit; int pDbPage; } ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef int BtShared ;


 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int btreeGetPage (int *,int ,TYPE_1__**,int) ;
 int releasePage (TYPE_1__*) ;
 int sqlite3PagerPageRefcount (int ) ;

__attribute__((used)) static int btreeGetUnusedPage(
  BtShared *pBt,
  Pgno pgno,
  MemPage **ppPage,
  int flags
){
  int rc = btreeGetPage(pBt, pgno, ppPage, flags);
  if( rc==SQLITE_OK ){
    if( sqlite3PagerPageRefcount((*ppPage)->pDbPage)>1 ){
      releasePage(*ppPage);
      *ppPage = 0;
      return SQLITE_CORRUPT_BKPT;
    }
    (*ppPage)->isInit = 0;
  }else{
    *ppPage = 0;
  }
  return rc;
}
