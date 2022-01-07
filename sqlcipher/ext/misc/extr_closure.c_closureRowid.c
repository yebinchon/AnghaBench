
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_vtab_cursor ;
struct TYPE_4__ {TYPE_1__* pCurrent; } ;
typedef TYPE_2__ closure_cursor ;
struct TYPE_3__ {int id; } ;


 int SQLITE_OK ;

__attribute__((used)) static int closureRowid(sqlite3_vtab_cursor *cur, sqlite_int64 *pRowid){
  closure_cursor *pCur = (closure_cursor*)cur;
  *pRowid = pCur->pCurrent->id;
  return SQLITE_OK;
}
