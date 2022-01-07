
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_3__ {struct TYPE_3__* zDir; scalar_t__ pDir; } ;
typedef TYPE_1__ FsdirCsr ;


 int SQLITE_OK ;
 int closedir (scalar_t__) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int fsdirClose(sqlite3_vtab_cursor *cur){
  FsdirCsr *pCur = (FsdirCsr*)cur;
  if( pCur->pDir ) closedir(pCur->pDir);
  sqlite3_free(pCur->zDir);
  sqlite3_free(pCur);
  return SQLITE_OK;
}
