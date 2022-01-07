
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ pStmt; } ;
typedef TYPE_1__ echo_cursor ;



__attribute__((used)) static int echoEof(sqlite3_vtab_cursor *cur){
  return (((echo_cursor *)cur)->pStmt ? 0 : 1);
}
