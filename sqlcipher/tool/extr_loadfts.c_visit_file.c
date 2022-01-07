
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nRowPerTrans; int db; int pInsert; } ;
typedef TYPE_1__ VisitContext ;


 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int sqlite3_bind_text (int ,int,char const*,int,int ) ;
 int sqlite3_exec (int ,char*,int ,int ,int ) ;
 int sqlite3_last_insert_rowid (int ) ;
 int sqlite3_reset (int ) ;
 int sqlite3_step (int ) ;
 int sqlite_error_out (char*,int ) ;

void visit_file(void *pCtx, const char *zPath){
  int rc;
  VisitContext *p = (VisitContext*)pCtx;

  sqlite3_bind_text(p->pInsert, 1, zPath, -1, SQLITE_STATIC);
  sqlite3_step(p->pInsert);
  rc = sqlite3_reset(p->pInsert);
  if( rc!=SQLITE_OK ){
    sqlite_error_out("insert", p->db);
  }else if( p->nRowPerTrans>0
         && (sqlite3_last_insert_rowid(p->db) % p->nRowPerTrans)==0
  ){
    sqlite3_exec(p->db, "COMMIT ; BEGIN", 0, 0, 0);
  }
}
