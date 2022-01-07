
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int sqlite3_vfs ;
typedef int sqlite3_file ;
struct TYPE_9__ {int nDb; int (* xCommitCallback ) (int ) ;TYPE_1__* aDb; int * pVfs; int pCommitArg; } ;
typedef TYPE_2__ sqlite3 ;
typedef int iRandom ;
typedef int i64 ;
typedef int Vdbe ;
struct TYPE_8__ {scalar_t__ safety_level; int * pBt; } ;
typedef int Pager ;
typedef int Btree ;


 scalar_t__ PAGER_SYNCHRONOUS_OFF ;
 int SQLITE_ACCESS_EXISTS ;
 int SQLITE_BUSY ;
 int SQLITE_CONSTRAINT_COMMITHOOK ;
 int SQLITE_FULL ;
 int SQLITE_IOCAP_SEQUENTIAL ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_EXCLUSIVE ;
 int SQLITE_OPEN_MASTER_JOURNAL ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_SYNC_NORMAL ;
 int UNUSED_PARAMETER (int *) ;
 int assert (int) ;
 int disable_simulated_io_errors () ;
 int enable_simulated_io_errors () ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3BtreeCommitPhaseOne (int *,char*) ;
 int sqlite3BtreeCommitPhaseTwo (int *,int) ;
 int sqlite3BtreeEnter (int *) ;
 char const* sqlite3BtreeGetFilename (int *) ;
 char* sqlite3BtreeGetJournalname (int *) ;
 scalar_t__ sqlite3BtreeIsInTrans (int *) ;
 int sqlite3BtreeLeave (int *) ;
 int * sqlite3BtreePager (int *) ;
 int sqlite3DbFree (TYPE_2__*,char*) ;
 int sqlite3EndBenignMalloc () ;
 int sqlite3FileSuffix3 (char const*,char*) ;
 char* sqlite3MPrintf (TYPE_2__*,char*,char const*) ;
 int sqlite3OsAccess (int *,char*,int ,int*) ;
 int sqlite3OsCloseFree (int *) ;
 int sqlite3OsDelete (int *,char*,int) ;
 int sqlite3OsDeviceCharacteristics (int *) ;
 int sqlite3OsOpenMalloc (int *,char*,int **,int,int ) ;
 int sqlite3OsSync (int *,int ) ;
 int sqlite3OsWrite (int *,char const*,int,int ) ;
 int sqlite3PagerExclusiveLock (int *) ;
 size_t sqlite3PagerGetJournalMode (int *) ;
 scalar_t__ sqlite3PagerIsMemdb (int *) ;
 int sqlite3Strlen30 (char const*) ;
 int sqlite3VtabCommit (TYPE_2__*) ;
 int sqlite3VtabSync (TYPE_2__*,int *) ;
 int sqlite3_log (int ,char*,char*) ;
 int sqlite3_randomness (int,int*) ;
 int sqlite3_snprintf (int,char*,char*,int,int) ;
 int stub1 (int ) ;

__attribute__((used)) static int vdbeCommit(sqlite3 *db, Vdbe *p){
  int i;
  int nTrans = 0;


  int rc = SQLITE_OK;
  int needXcommit = 0;
  rc = sqlite3VtabSync(db, p);







  for(i=0; rc==SQLITE_OK && i<db->nDb; i++){
    Btree *pBt = db->aDb[i].pBt;
    if( sqlite3BtreeIsInTrans(pBt) ){



      static const u8 aMJNeeded[] = {
                        1,
                        1,
                        0,
                        1,
                        0,
                        0
      };
      Pager *pPager;
      needXcommit = 1;
      sqlite3BtreeEnter(pBt);
      pPager = sqlite3BtreePager(pBt);
      if( db->aDb[i].safety_level!=PAGER_SYNCHRONOUS_OFF
       && aMJNeeded[sqlite3PagerGetJournalMode(pPager)]
       && sqlite3PagerIsMemdb(pPager)==0
      ){
        assert( i!=1 );
        nTrans++;
      }
      rc = sqlite3PagerExclusiveLock(pPager);
      sqlite3BtreeLeave(pBt);
    }
  }
  if( rc!=SQLITE_OK ){
    return rc;
  }


  if( needXcommit && db->xCommitCallback ){
    rc = db->xCommitCallback(db->pCommitArg);
    if( rc ){
      return SQLITE_CONSTRAINT_COMMITHOOK;
    }
  }
  if( 0==sqlite3Strlen30(sqlite3BtreeGetFilename(db->aDb[0].pBt))
   || nTrans<=1
  ){
    for(i=0; rc==SQLITE_OK && i<db->nDb; i++){
      Btree *pBt = db->aDb[i].pBt;
      if( pBt ){
        rc = sqlite3BtreeCommitPhaseOne(pBt, 0);
      }
    }






    for(i=0; rc==SQLITE_OK && i<db->nDb; i++){
      Btree *pBt = db->aDb[i].pBt;
      if( pBt ){
        rc = sqlite3BtreeCommitPhaseTwo(pBt, 0);
      }
    }
    if( rc==SQLITE_OK ){
      sqlite3VtabCommit(db);
    }
  }






  else{
    sqlite3_vfs *pVfs = db->pVfs;
    char *zMaster = 0;
    char const *zMainFile = sqlite3BtreeGetFilename(db->aDb[0].pBt);
    sqlite3_file *pMaster = 0;
    i64 offset = 0;
    int res;
    int retryCount = 0;
    int nMainFile;


    nMainFile = sqlite3Strlen30(zMainFile);
    zMaster = sqlite3MPrintf(db, "%s-mjXXXXXX9XXz", zMainFile);
    if( zMaster==0 ) return SQLITE_NOMEM_BKPT;
    do {
      u32 iRandom;
      if( retryCount ){
        if( retryCount>100 ){
          sqlite3_log(SQLITE_FULL, "MJ delete: %s", zMaster);
          sqlite3OsDelete(pVfs, zMaster, 0);
          break;
        }else if( retryCount==1 ){
          sqlite3_log(SQLITE_FULL, "MJ collide: %s", zMaster);
        }
      }
      retryCount++;
      sqlite3_randomness(sizeof(iRandom), &iRandom);
      sqlite3_snprintf(13, &zMaster[nMainFile], "-mj%06X9%02X",
                               (iRandom>>8)&0xffffff, iRandom&0xff);


      assert( zMaster[sqlite3Strlen30(zMaster)-3]=='9' );
      sqlite3FileSuffix3(zMainFile, zMaster);
      rc = sqlite3OsAccess(pVfs, zMaster, SQLITE_ACCESS_EXISTS, &res);
    }while( rc==SQLITE_OK && res );
    if( rc==SQLITE_OK ){

      rc = sqlite3OsOpenMalloc(pVfs, zMaster, &pMaster,
          SQLITE_OPEN_READWRITE|SQLITE_OPEN_CREATE|
          SQLITE_OPEN_EXCLUSIVE|SQLITE_OPEN_MASTER_JOURNAL, 0
      );
    }
    if( rc!=SQLITE_OK ){
      sqlite3DbFree(db, zMaster);
      return rc;
    }







    for(i=0; i<db->nDb; i++){
      Btree *pBt = db->aDb[i].pBt;
      if( sqlite3BtreeIsInTrans(pBt) ){
        char const *zFile = sqlite3BtreeGetJournalname(pBt);
        if( zFile==0 ){
          continue;
        }
        assert( zFile[0]!=0 );
        rc = sqlite3OsWrite(pMaster, zFile, sqlite3Strlen30(zFile)+1, offset);
        offset += sqlite3Strlen30(zFile)+1;
        if( rc!=SQLITE_OK ){
          sqlite3OsCloseFree(pMaster);
          sqlite3OsDelete(pVfs, zMaster, 0);
          sqlite3DbFree(db, zMaster);
          return rc;
        }
      }
    }




    if( 0==(sqlite3OsDeviceCharacteristics(pMaster)&SQLITE_IOCAP_SEQUENTIAL)
     && SQLITE_OK!=(rc = sqlite3OsSync(pMaster, SQLITE_SYNC_NORMAL))
    ){
      sqlite3OsCloseFree(pMaster);
      sqlite3OsDelete(pVfs, zMaster, 0);
      sqlite3DbFree(db, zMaster);
      return rc;
    }
    for(i=0; rc==SQLITE_OK && i<db->nDb; i++){
      Btree *pBt = db->aDb[i].pBt;
      if( pBt ){
        rc = sqlite3BtreeCommitPhaseOne(pBt, zMaster);
      }
    }
    sqlite3OsCloseFree(pMaster);
    assert( rc!=SQLITE_BUSY );
    if( rc!=SQLITE_OK ){
      sqlite3DbFree(db, zMaster);
      return rc;
    }





    rc = sqlite3OsDelete(pVfs, zMaster, 1);
    sqlite3DbFree(db, zMaster);
    zMaster = 0;
    if( rc ){
      return rc;
    }
    disable_simulated_io_errors();
    sqlite3BeginBenignMalloc();
    for(i=0; i<db->nDb; i++){
      Btree *pBt = db->aDb[i].pBt;
      if( pBt ){
        sqlite3BtreeCommitPhaseTwo(pBt, 1);
      }
    }
    sqlite3EndBenignMalloc();
    enable_simulated_io_errors();

    sqlite3VtabCommit(db);
  }


  return rc;
}
