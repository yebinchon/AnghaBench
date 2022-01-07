
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zErr; int completed; int opnum; scalar_t__ zStaticErr; scalar_t__ db; scalar_t__ pStmt; int (* xOp ) (TYPE_1__*) ;int zFilename; } ;
typedef TYPE_1__ Thread ;


 scalar_t__ SQLITE_OK ;
 int sched_yield () ;
 int sqlite3_close (scalar_t__) ;
 scalar_t__ sqlite3_errcode (scalar_t__) ;
 int sqlite3_errmsg (scalar_t__) ;
 int sqlite3_finalize (scalar_t__) ;
 int sqlite3_free (scalar_t__) ;
 int sqlite3_open (int ,scalar_t__*) ;
 int sqlite3_thread_cleanup () ;
 scalar_t__ strdup (int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void *test_thread_main(void *pArg){
  Thread *p = (Thread*)pArg;
  if( p->db ){
    sqlite3_close(p->db);
  }
  sqlite3_open(p->zFilename, &p->db);
  if( SQLITE_OK!=sqlite3_errcode(p->db) ){
    p->zErr = strdup(sqlite3_errmsg(p->db));
    sqlite3_close(p->db);
    p->db = 0;
  }
  p->pStmt = 0;
  p->completed = 1;
  while( p->opnum<=p->completed ) sched_yield();
  while( p->xOp ){
    if( p->zErr && p->zErr!=p->zStaticErr ){
      sqlite3_free(p->zErr);
      p->zErr = 0;
    }
    (*p->xOp)(p);
    p->completed++;
    while( p->opnum<=p->completed ) sched_yield();
  }
  if( p->pStmt ){
    sqlite3_finalize(p->pStmt);
    p->pStmt = 0;
  }
  if( p->db ){
    sqlite3_close(p->db);
    p->db = 0;
  }
  if( p->zErr && p->zErr!=p->zStaticErr ){
    sqlite3_free(p->zErr);
    p->zErr = 0;
  }
  p->completed++;

  sqlite3_thread_cleanup();

  return 0;
}
