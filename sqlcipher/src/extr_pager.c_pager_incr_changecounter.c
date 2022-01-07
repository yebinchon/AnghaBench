
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ eState; int changeCountDone; scalar_t__ dbSize; scalar_t__ dbFileSize; int dbFileVers; int * aStat; int pageSize; int fd; int tempFile; } ;
struct TYPE_11__ {int pData; } ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ Pager ;


 scalar_t__ ALWAYS (int) ;
 int CODEC2 (TYPE_2__*,int ,int,int,int,void const*) ;
 scalar_t__ DIRECT_MODE ;
 size_t PAGER_STAT_WRITE ;
 scalar_t__ PAGER_WRITER_CACHEMOD ;
 scalar_t__ PAGER_WRITER_DBMOD ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 int assert_pager_state (TYPE_2__*) ;
 scalar_t__ isOpen (int ) ;
 int memcpy (int *,void const*,int) ;
 int pager_write_changecounter (TYPE_1__*) ;
 int sqlite3OsWrite (int ,void const*,int ,int ) ;
 int sqlite3PagerGet (TYPE_2__*,int,TYPE_1__**,int ) ;
 int sqlite3PagerUnref (TYPE_1__*) ;
 int sqlite3PagerWrite (TYPE_1__*) ;

__attribute__((used)) static int pager_incr_changecounter(Pager *pPager, int isDirectMode){
  int rc = SQLITE_OK;

  assert( pPager->eState==PAGER_WRITER_CACHEMOD
       || pPager->eState==PAGER_WRITER_DBMOD
  );
  assert( assert_pager_state(pPager) );
  assert( isDirectMode==0 );
  UNUSED_PARAMETER(isDirectMode);




  if( !pPager->changeCountDone && ALWAYS(pPager->dbSize>0) ){
    PgHdr *pPgHdr;

    assert( !pPager->tempFile && isOpen(pPager->fd) );


    rc = sqlite3PagerGet(pPager, 1, &pPgHdr, 0);
    assert( pPgHdr==0 || rc==SQLITE_OK );






    if( !0 && ALWAYS(rc==SQLITE_OK) ){
      rc = sqlite3PagerWrite(pPgHdr);
    }

    if( rc==SQLITE_OK ){

      pager_write_changecounter(pPgHdr);


      if( 0 ){
        const void *zBuf;
        assert( pPager->dbFileSize>0 );
        CODEC2(pPager, pPgHdr->pData, 1, 6, rc=SQLITE_NOMEM_BKPT, zBuf);
        if( rc==SQLITE_OK ){
          rc = sqlite3OsWrite(pPager->fd, zBuf, pPager->pageSize, 0);
          pPager->aStat[PAGER_STAT_WRITE]++;
        }
        if( rc==SQLITE_OK ){



          const void *pCopy = (const void *)&((const char *)zBuf)[24];
          memcpy(&pPager->dbFileVers, pCopy, sizeof(pPager->dbFileVers));
          pPager->changeCountDone = 1;
        }
      }else{
        pPager->changeCountDone = 1;
      }
    }


    sqlite3PagerUnref(pPgHdr);
  }
  return rc;
}
