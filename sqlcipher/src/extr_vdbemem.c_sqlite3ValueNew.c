
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * db; int flags; } ;
typedef TYPE_1__ sqlite3_value ;
typedef int sqlite3 ;
typedef TYPE_1__ Mem ;


 int MEM_Null ;
 TYPE_1__* sqlite3DbMallocZero (int *,int) ;

sqlite3_value *sqlite3ValueNew(sqlite3 *db){
  Mem *p = sqlite3DbMallocZero(db, sizeof(*p));
  if( p ){
    p->flags = MEM_Null;
    p->db = db;
  }
  return p;
}
