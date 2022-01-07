
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ rc; } ;
typedef TYPE_1__ explain_cursor ;


 scalar_t__ SQLITE_ROW ;

__attribute__((used)) static int explainEof(sqlite3_vtab_cursor *cur){
  explain_cursor *pCur = (explain_cursor*)cur;
  return pCur->rc!=SQLITE_ROW;
}
