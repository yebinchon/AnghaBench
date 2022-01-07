
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ sqlite3 ;


 int assert (int) ;
 int sqlite3DbFreeNN (TYPE_1__*,void*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;

void sqlite3DbFree(sqlite3 *db, void *p){
  assert( db==0 || sqlite3_mutex_held(db->mutex) );
  if( p ) sqlite3DbFreeNN(db, p);
}
