
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ePlan; scalar_t__ bDesc; } ;
typedef TYPE_1__ Fts5Cursor ;


 scalar_t__ FTS5_PLAN_SCAN ;
 int FTS5_STMT_LOOKUP ;
 int FTS5_STMT_SCAN_ASC ;
 int FTS5_STMT_SCAN_DESC ;

__attribute__((used)) static int fts5StmtType(Fts5Cursor *pCsr){
  if( pCsr->ePlan==FTS5_PLAN_SCAN ){
    return (pCsr->bDesc) ? FTS5_STMT_SCAN_DESC : FTS5_STMT_SCAN_ASC;
  }
  return FTS5_STMT_LOOKUP;
}
