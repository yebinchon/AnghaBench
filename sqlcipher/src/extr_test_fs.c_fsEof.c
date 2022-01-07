
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {int pStmt; } ;
typedef TYPE_1__ fs_cursor ;


 scalar_t__ sqlite3_data_count (int ) ;

__attribute__((used)) static int fsEof(sqlite3_vtab_cursor *cur){
  fs_cursor *pCur = (fs_cursor*)cur;
  return (sqlite3_data_count(pCur->pStmt)==0);
}
