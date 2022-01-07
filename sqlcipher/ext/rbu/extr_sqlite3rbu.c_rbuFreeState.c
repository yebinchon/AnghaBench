
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* zIdx; struct TYPE_4__* zDataTbl; struct TYPE_4__* zTbl; } ;
typedef TYPE_1__ RbuState ;


 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void rbuFreeState(RbuState *p){
  if( p ){
    sqlite3_free(p->zTbl);
    sqlite3_free(p->zDataTbl);
    sqlite3_free(p->zIdx);
    sqlite3_free(p);
  }
}
