#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct Db {TYPE_4__* pSchema; scalar_t__ pBt; } ;
struct TYPE_27__ {TYPE_3__* pStart; scalar_t__ bMalloced; } ;
struct TYPE_26__ {TYPE_3__* zAuthPW; TYPE_3__* zAuthUser; } ;
struct TYPE_28__ {scalar_t__ magic; int nDb; TYPE_2__ lookaside; int /*<<< orphan*/  mutex; struct Db* aDb; TYPE_1__ auth; int /*<<< orphan*/  pErr; int /*<<< orphan*/  aModule; int /*<<< orphan*/  aCollSeq; int /*<<< orphan*/  aFunc; struct Db* aDbStatic; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_29__ {int /*<<< orphan*/  pAux; int /*<<< orphan*/  (* xDestroy ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  pUser; int /*<<< orphan*/  (* xDel ) (int /*<<< orphan*/ ) ;struct TYPE_29__* pNext; } ;
typedef  TYPE_4__ Module ;
typedef  int /*<<< orphan*/  HashElem ;
typedef  TYPE_4__ FuncDef ;
typedef  TYPE_4__ CollSeq ;

/* Variables and functions */
 scalar_t__ SQLITE_MAGIC_CLOSED ; 
 scalar_t__ SQLITE_MAGIC_ERROR ; 
 scalar_t__ SQLITE_MAGIC_ZOMBIE ; 
 int /*<<< orphan*/  SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

void FUNC25(sqlite3 *db){
  HashElem *i;                    /* Hash table iterator */
  int j;

  /* If there are outstanding sqlite3_stmt or sqlite3_backup objects
  ** or if the connection has not yet been closed by sqlite3_close_v2(),
  ** then just leave the mutex and return.
  */
  if( db->magic!=SQLITE_MAGIC_ZOMBIE || FUNC1(db) ){
    FUNC19(db->mutex);
    return;
  }

  /* If we reach this point, it means that the database connection has
  ** closed all sqlite3_stmt and sqlite3_backup objects and has been
  ** passed to sqlite3_close (meaning that it is a zombie).  Therefore,
  ** go ahead and free all resources.
  */

  /* If a transaction is open, roll it back. This also ensures that if
  ** any database schemas have been modified by an uncommitted transaction
  ** they are reset. And that the required b-tree mutex is held to make
  ** the pager rollback and schema reset an atomic operation. */
  FUNC12(db, SQLITE_OK);

  /* Free any outstanding Savepoint structures. */
  FUNC5(db);

  /* Close all database connections */
  for(j=0; j<db->nDb; j++){
    struct Db *pDb = &db->aDb[j];
    if( pDb->pBt ){
      FUNC3(pDb->pBt);
      pDb->pBt = 0;
      if( j!=1 ){
        pDb->pSchema = 0;
      }
    }
  }
  /* Clear the TEMP schema separately and last */
  if( db->aDb[1].pSchema ){
    FUNC13(db->aDb[1].pSchema);
  }
  FUNC16(db);

  /* Free up the array of auxiliary databases */
  FUNC6(db);
  FUNC0( db->nDb<=2 );
  FUNC0( db->aDb==db->aDbStatic );

  /* Tell the code in notify.c that the connection no longer holds any
  ** locks and does not require any further unlock-notify callbacks.
  */
  FUNC7(db);

  for(i=FUNC21(&db->aFunc); i; i=FUNC22(i)){
    FuncDef *pNext, *p;
    p = FUNC20(i);
    do{
      FUNC2(db, p);
      pNext = p->pNext;
      FUNC8(db, p);
      p = pNext;
    }while( p );
  }
  FUNC10(&db->aFunc);
  for(i=FUNC21(&db->aCollSeq); i; i=FUNC22(i)){
    CollSeq *pColl = (CollSeq *)FUNC20(i);
    /* Invoke any destructors registered for collation sequence user data. */
    for(j=0; j<3; j++){
      if( pColl[j].xDel ){
        pColl[j].xDel(pColl[j].pUser);
      }
    }
    FUNC8(db, pColl);
  }
  FUNC10(&db->aCollSeq);
#ifndef SQLITE_OMIT_VIRTUALTABLE
  for(i=FUNC21(&db->aModule); i; i=FUNC22(i)){
    Module *pMod = (Module *)FUNC20(i);
    if( pMod->xDestroy ){
      pMod->xDestroy(pMod->pAux);
    }
    FUNC15(db, pMod);
    FUNC8(db, pMod);
  }
  FUNC10(&db->aModule);
#endif

  FUNC9(db, SQLITE_OK); /* Deallocates any cached error strings. */
  FUNC14(db->pErr);
  FUNC4(db);
#if SQLITE_USER_AUTHENTICATION
  sqlite3_free(db->auth.zAuthUser);
  sqlite3_free(db->auth.zAuthPW);
#endif

  db->magic = SQLITE_MAGIC_ERROR;

  /* The temp-database schema is allocated differently from the other schema
  ** objects (using sqliteMalloc() directly, instead of sqlite3BtreeSchema()).
  ** So it needs to be freed here. Todo: Why not roll the temp schema into
  ** the same sqliteMalloc() as the one that allocates the database 
  ** structure?
  */
  FUNC8(db, db->aDb[1].pSchema);
  FUNC19(db->mutex);
  db->magic = SQLITE_MAGIC_CLOSED;
  FUNC18(db->mutex);
  FUNC0( FUNC11(db,0)==0 );
  if( db->lookaside.bMalloced ){
    FUNC17(db->lookaside.pStart);
  }
  FUNC17(db);
}