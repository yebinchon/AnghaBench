
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_2__ {int pVList; } ;
typedef TYPE_1__ Vdbe ;


 char const* sqlite3VListNumToName (int ,int) ;

const char *sqlite3_bind_parameter_name(sqlite3_stmt *pStmt, int i){
  Vdbe *p = (Vdbe*)pStmt;
  if( p==0 ) return 0;
  return sqlite3VListNumToName(p->pVList, i);
}
