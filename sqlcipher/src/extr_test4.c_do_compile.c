
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ db; char* zErr; char* zStaticErr; scalar_t__ pStmt; int zArg; int rc; } ;
typedef TYPE_1__ Thread ;


 int SQLITE_ERROR ;
 int sqlite3_finalize (scalar_t__) ;
 int sqlite3_prepare (scalar_t__,int ,int,scalar_t__*,int ) ;

__attribute__((used)) static void do_compile(Thread *p){
  if( p->db==0 ){
    p->zErr = p->zStaticErr = "no database is open";
    p->rc = SQLITE_ERROR;
    return;
  }
  if( p->pStmt ){
    sqlite3_finalize(p->pStmt);
    p->pStmt = 0;
  }
  p->rc = sqlite3_prepare(p->db, p->zArg, -1, &p->pStmt, 0);
}
