
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nDb; TYPE_1__* aDb; int mutex; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_4__ {int * pSchema; } ;
typedef int Schema ;


 int assert (int) ;
 int sqlite3_mutex_held (int ) ;

int sqlite3SchemaToIndex(sqlite3 *db, Schema *pSchema){
  int i = -1000000;
  assert( sqlite3_mutex_held(db->mutex) );
  if( pSchema ){
    for(i=0; 1; i++){
      assert( i<db->nDb );
      if( db->aDb[i].pSchema==pSchema ){
        break;
      }
    }
    assert( i>=0 && i<db->nDb );
  }
  return i;
}
