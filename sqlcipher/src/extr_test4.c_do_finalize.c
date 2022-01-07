
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pStmt; char* zErr; char* zStaticErr; int rc; } ;
typedef TYPE_1__ Thread ;


 int SQLITE_ERROR ;
 int sqlite3_finalize (scalar_t__) ;

__attribute__((used)) static void do_finalize(Thread *p){
  if( p->pStmt==0 ){
    p->zErr = p->zStaticErr = "no virtual machine available";
    p->rc = SQLITE_ERROR;
    return;
  }
  p->rc = sqlite3_finalize(p->pStmt);
  p->pStmt = 0;
}
