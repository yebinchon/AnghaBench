
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {int pExplain; } ;
typedef TYPE_1__ explain_cursor ;


 int SQLITE_OK ;
 int sqlite3_column_int64 (int ,int ) ;

__attribute__((used)) static int explainRowid(sqlite3_vtab_cursor *cur, sqlite_int64 *pRowid){
  explain_cursor *pCur = (explain_cursor*)cur;
  *pRowid = sqlite3_column_int64(pCur->pExplain, 0);
  return SQLITE_OK;
}
