
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; int (* xFree ) (int ) ;} ;
typedef TYPE_1__ sqlite3_intarray ;


 int sqlite3_free (TYPE_1__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void intarrayFree(sqlite3_intarray *p){
  if( p->xFree ){
    p->xFree(p->a);
  }
  sqlite3_free(p);
}
