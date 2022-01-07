
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_3__ {struct TYPE_3__* zSql; int pExplain; } ;
typedef TYPE_1__ explain_cursor ;


 int SQLITE_OK ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int explainClose(sqlite3_vtab_cursor *cur){
  explain_cursor *pCur = (explain_cursor*)cur;
  sqlite3_finalize(pCur->pExplain);
  sqlite3_free(pCur->zSql);
  sqlite3_free(pCur);
  return SQLITE_OK;
}
