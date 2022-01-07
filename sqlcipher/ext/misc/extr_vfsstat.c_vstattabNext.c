
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {int i; } ;
typedef TYPE_1__ VfsStatCursor ;


 int SQLITE_OK ;

__attribute__((used)) static int vstattabNext(sqlite3_vtab_cursor *cur){
  ((VfsStatCursor*)cur)->i++;
  return SQLITE_OK;
}
