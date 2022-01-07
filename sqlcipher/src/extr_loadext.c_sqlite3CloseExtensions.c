
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nExtension; int * aExtension; int pVfs; int mutex; } ;
typedef TYPE_1__ sqlite3 ;


 int assert (int ) ;
 int sqlite3DbFree (TYPE_1__*,int *) ;
 int sqlite3OsDlClose (int ,int ) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3CloseExtensions(sqlite3 *db){
  int i;
  assert( sqlite3_mutex_held(db->mutex) );
  for(i=0; i<db->nExtension; i++){
    sqlite3OsDlClose(db->pVfs, db->aExtension[i]);
  }
  sqlite3DbFree(db, db->aExtension);
}
