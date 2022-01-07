
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zContentTbl; scalar_t__ bHasStat; scalar_t__ bHasDocsize; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_OK ;
 int SQL_DELETE_ALL_CONTENT ;
 int SQL_DELETE_ALL_DOCSIZE ;
 int SQL_DELETE_ALL_SEGDIR ;
 int SQL_DELETE_ALL_SEGMENTS ;
 int SQL_DELETE_ALL_STAT ;
 int assert (int) ;
 int fts3SqlExec (int*,TYPE_1__*,int ,int ) ;
 int sqlite3Fts3PendingTermsClear (TYPE_1__*) ;

__attribute__((used)) static int fts3DeleteAll(Fts3Table *p, int bContent){
  int rc = SQLITE_OK;


  sqlite3Fts3PendingTermsClear(p);



  assert( p->zContentTbl==0 || bContent==0 );
  if( bContent ) fts3SqlExec(&rc, p, SQL_DELETE_ALL_CONTENT, 0);
  fts3SqlExec(&rc, p, SQL_DELETE_ALL_SEGMENTS, 0);
  fts3SqlExec(&rc, p, SQL_DELETE_ALL_SEGDIR, 0);
  if( p->bHasDocsize ){
    fts3SqlExec(&rc, p, SQL_DELETE_ALL_DOCSIZE, 0);
  }
  if( p->bHasStat ){
    fts3SqlExec(&rc, p, SQL_DELETE_ALL_STAT, 0);
  }
  return rc;
}
