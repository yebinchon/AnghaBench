
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iValue; scalar_t__ mxValue; } ;
typedef TYPE_1__ wholenumber_cursor ;
typedef int sqlite3_vtab_cursor ;



__attribute__((used)) static int wholenumberEof(sqlite3_vtab_cursor *cur){
  wholenumber_cursor *pCur = (wholenumber_cursor*)cur;
  return pCur->iValue>pCur->mxValue || pCur->iValue==0;
}
