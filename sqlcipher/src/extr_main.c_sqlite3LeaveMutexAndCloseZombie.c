
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct Db {TYPE_4__* pSchema; scalar_t__ pBt; } ;
struct TYPE_27__ {TYPE_3__* pStart; scalar_t__ bMalloced; } ;
struct TYPE_26__ {TYPE_3__* zAuthPW; TYPE_3__* zAuthUser; } ;
struct TYPE_28__ {scalar_t__ magic; int nDb; TYPE_2__ lookaside; int mutex; struct Db* aDb; TYPE_1__ auth; int pErr; int aModule; int aCollSeq; int aFunc; struct Db* aDbStatic; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_29__ {int pAux; int (* xDestroy ) (int ) ;int pUser; int (* xDel ) (int ) ;struct TYPE_29__* pNext; } ;
typedef TYPE_4__ Module ;
typedef int HashElem ;
typedef TYPE_4__ FuncDef ;
typedef TYPE_4__ CollSeq ;


 scalar_t__ SQLITE_MAGIC_CLOSED ;
 scalar_t__ SQLITE_MAGIC_ERROR ;
 scalar_t__ SQLITE_MAGIC_ZOMBIE ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ connectionIsBusy (TYPE_3__*) ;
 int functionDestroy (TYPE_3__*,TYPE_4__*) ;
 int sqlite3BtreeClose (scalar_t__) ;
 int sqlite3CloseExtensions (TYPE_3__*) ;
 int sqlite3CloseSavepoints (TYPE_3__*) ;
 int sqlite3CollapseDatabaseArray (TYPE_3__*) ;
 int sqlite3ConnectionClosed (TYPE_3__*) ;
 int sqlite3DbFree (TYPE_3__*,TYPE_4__*) ;
 int sqlite3Error (TYPE_3__*,int ) ;
 int sqlite3HashClear (int *) ;
 scalar_t__ sqlite3LookasideUsed (TYPE_3__*,int ) ;
 int sqlite3RollbackAll (TYPE_3__*,int ) ;
 int sqlite3SchemaClear (TYPE_4__*) ;
 int sqlite3ValueFree (int ) ;
 int sqlite3VtabEponymousTableClear (TYPE_3__*,TYPE_4__*) ;
 int sqlite3VtabUnlockList (TYPE_3__*) ;
 int sqlite3_free (TYPE_3__*) ;
 int sqlite3_mutex_free (int ) ;
 int sqlite3_mutex_leave (int ) ;
 TYPE_4__* sqliteHashData (int *) ;
 int * sqliteHashFirst (int *) ;
 int * sqliteHashNext (int *) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

void sqlite3LeaveMutexAndCloseZombie(sqlite3 *db){
  HashElem *i;
  int j;





  if( db->magic!=SQLITE_MAGIC_ZOMBIE || connectionIsBusy(db) ){
    sqlite3_mutex_leave(db->mutex);
    return;
  }
  sqlite3RollbackAll(db, SQLITE_OK);


  sqlite3CloseSavepoints(db);


  for(j=0; j<db->nDb; j++){
    struct Db *pDb = &db->aDb[j];
    if( pDb->pBt ){
      sqlite3BtreeClose(pDb->pBt);
      pDb->pBt = 0;
      if( j!=1 ){
        pDb->pSchema = 0;
      }
    }
  }

  if( db->aDb[1].pSchema ){
    sqlite3SchemaClear(db->aDb[1].pSchema);
  }
  sqlite3VtabUnlockList(db);


  sqlite3CollapseDatabaseArray(db);
  assert( db->nDb<=2 );
  assert( db->aDb==db->aDbStatic );




  sqlite3ConnectionClosed(db);

  for(i=sqliteHashFirst(&db->aFunc); i; i=sqliteHashNext(i)){
    FuncDef *pNext, *p;
    p = sqliteHashData(i);
    do{
      functionDestroy(db, p);
      pNext = p->pNext;
      sqlite3DbFree(db, p);
      p = pNext;
    }while( p );
  }
  sqlite3HashClear(&db->aFunc);
  for(i=sqliteHashFirst(&db->aCollSeq); i; i=sqliteHashNext(i)){
    CollSeq *pColl = (CollSeq *)sqliteHashData(i);

    for(j=0; j<3; j++){
      if( pColl[j].xDel ){
        pColl[j].xDel(pColl[j].pUser);
      }
    }
    sqlite3DbFree(db, pColl);
  }
  sqlite3HashClear(&db->aCollSeq);

  for(i=sqliteHashFirst(&db->aModule); i; i=sqliteHashNext(i)){
    Module *pMod = (Module *)sqliteHashData(i);
    if( pMod->xDestroy ){
      pMod->xDestroy(pMod->pAux);
    }
    sqlite3VtabEponymousTableClear(db, pMod);
    sqlite3DbFree(db, pMod);
  }
  sqlite3HashClear(&db->aModule);


  sqlite3Error(db, SQLITE_OK);
  sqlite3ValueFree(db->pErr);
  sqlite3CloseExtensions(db);





  db->magic = SQLITE_MAGIC_ERROR;







  sqlite3DbFree(db, db->aDb[1].pSchema);
  sqlite3_mutex_leave(db->mutex);
  db->magic = SQLITE_MAGIC_CLOSED;
  sqlite3_mutex_free(db->mutex);
  assert( sqlite3LookasideUsed(db,0)==0 );
  if( db->lookaside.bMalloced ){
    sqlite3_free(db->lookaside.pStart);
  }
  sqlite3_free(db);
}
