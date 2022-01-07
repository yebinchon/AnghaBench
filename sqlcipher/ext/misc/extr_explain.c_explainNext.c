
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ rc; int pExplain; } ;
typedef TYPE_1__ explain_cursor ;


 scalar_t__ SQLITE_DONE ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 scalar_t__ sqlite3_step (int ) ;

__attribute__((used)) static int explainNext(sqlite3_vtab_cursor *cur){
  explain_cursor *pCur = (explain_cursor*)cur;
  pCur->rc = sqlite3_step(pCur->pExplain);
  if( pCur->rc!=SQLITE_DONE && pCur->rc!=SQLITE_ROW ) return pCur->rc;
  return SQLITE_OK;
}
