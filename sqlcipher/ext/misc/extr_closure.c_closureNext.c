
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {int pCurrent; } ;
typedef TYPE_1__ closure_cursor ;


 int SQLITE_OK ;
 int closureAvlNext (int ) ;

__attribute__((used)) static int closureNext(sqlite3_vtab_cursor *cur){
  closure_cursor *pCur = (closure_cursor*)cur;
  pCur->pCurrent = closureAvlNext(pCur->pCurrent);
  return SQLITE_OK;
}
