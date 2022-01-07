
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pList2; } ;
typedef TYPE_1__ tclvar_cursor ;
typedef int sqlite3_vtab_cursor ;



__attribute__((used)) static int tclvarEof(sqlite3_vtab_cursor *cur){
  tclvar_cursor *pCur = (tclvar_cursor*)cur;
  return (pCur->pList2?0:1);
}
