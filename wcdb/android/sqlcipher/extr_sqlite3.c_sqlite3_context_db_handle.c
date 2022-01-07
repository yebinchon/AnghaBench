
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pOut; } ;
typedef TYPE_2__ sqlite3_context ;
typedef int sqlite3 ;
struct TYPE_4__ {int * db; } ;


 int assert (int) ;

sqlite3 *sqlite3_context_db_handle(sqlite3_context *p){
  assert( p && p->pOut );
  return p->pOut->db;
}
