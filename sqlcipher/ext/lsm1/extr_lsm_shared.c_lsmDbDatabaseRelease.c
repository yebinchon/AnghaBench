
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int pEnv; struct TYPE_10__* pNext; int pFS; scalar_t__ pShmhdr; TYPE_3__* pDatabase; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_13__ {TYPE_3__* pDatabase; } ;
struct TYPE_12__ {scalar_t__ nDbRef; scalar_t__ bMultiProc; int nShmChunk; TYPE_2__* pLsmFile; TYPE_2__** apShmChunk; struct TYPE_12__* pDbNext; int pClientMutex; TYPE_1__* pConn; } ;
struct TYPE_11__ {int pFile; struct TYPE_11__* pNext; } ;
typedef TYPE_2__ LsmFile ;
typedef TYPE_3__ Database ;


 int dbDeferClose (TYPE_1__*) ;
 int doDbDisconnect (TYPE_1__*) ;
 int enterGlobalMutex (int ) ;
 int freeDatabase (int ,TYPE_3__*) ;
 TYPE_6__ gShared ;
 int leaveGlobalMutex (int ) ;
 int lsmEnvClose (int ,int ) ;
 int lsmFree (int ,TYPE_2__*) ;
 int lsmFsUnmap (int ) ;
 int lsmMutexEnter (int ,int ) ;
 int lsmMutexLeave (int ,int ) ;

void lsmDbDatabaseRelease(lsm_db *pDb){
  Database *p = pDb->pDatabase;
  if( p ){
    lsm_db **ppDb;

    if( pDb->pShmhdr ){
      doDbDisconnect(pDb);
    }

    lsmFsUnmap(pDb->pFS);
    lsmMutexEnter(pDb->pEnv, p->pClientMutex);
    for(ppDb=&p->pConn; *ppDb!=pDb; ppDb=&((*ppDb)->pNext));
    *ppDb = pDb->pNext;
    dbDeferClose(pDb);
    lsmMutexLeave(pDb->pEnv, p->pClientMutex);

    enterGlobalMutex(pDb->pEnv);
    p->nDbRef--;
    if( p->nDbRef==0 ){
      LsmFile *pIter;
      LsmFile *pNext;
      Database **pp;


      for(pp=&gShared.pDatabase; *pp!=p; pp=&((*pp)->pDbNext));
      *pp = p->pDbNext;


      if( p->bMultiProc==0 ){
        int i;
        for(i=0; i<p->nShmChunk; i++){
          lsmFree(pDb->pEnv, p->apShmChunk[i]);
        }
      }


      for(pIter=p->pLsmFile; pIter; pIter=pNext){
        pNext = pIter->pNext;
        lsmEnvClose(pDb->pEnv, pIter->pFile);
        lsmFree(pDb->pEnv, pIter);
      }
      freeDatabase(pDb->pEnv, p);
    }
    leaveGlobalMutex(pDb->pEnv);
  }
}
