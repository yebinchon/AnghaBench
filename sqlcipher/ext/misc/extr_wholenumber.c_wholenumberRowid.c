
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iValue; } ;
typedef TYPE_1__ wholenumber_cursor ;
typedef int sqlite_int64 ;
typedef int sqlite3_vtab_cursor ;


 int SQLITE_OK ;

__attribute__((used)) static int wholenumberRowid(sqlite3_vtab_cursor *cur, sqlite_int64 *pRowid){
  wholenumber_cursor *pCur = (wholenumber_cursor*)cur;
  *pRowid = pCur->iValue;
  return SQLITE_OK;
}
