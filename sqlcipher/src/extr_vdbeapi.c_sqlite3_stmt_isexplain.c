
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_2__ {int explain; } ;
typedef TYPE_1__ Vdbe ;



int sqlite3_stmt_isexplain(sqlite3_stmt *pStmt){
  return pStmt ? ((Vdbe*)pStmt)->explain : 0;
}
