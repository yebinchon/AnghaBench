
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {int iRowid; scalar_t__ iDb; } ;
typedef TYPE_1__ memstat_cursor ;


 int SQLITE_OK ;

__attribute__((used)) static int memstatRowid(sqlite3_vtab_cursor *cur, sqlite_int64 *pRowid){
  memstat_cursor *pCur = (memstat_cursor*)cur;
  *pRowid = pCur->iRowid*1000 + pCur->iDb;
  return SQLITE_OK;
}
