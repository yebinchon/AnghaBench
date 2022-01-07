
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pStorage; } ;
typedef int Fts5Table ;
typedef TYPE_1__ Fts5FullTable ;


 int fts5TripCursors (TYPE_1__*) ;
 int sqlite3Fts5StorageSync (int ) ;

int sqlite3Fts5FlushToDisk(Fts5Table *pTab){
  fts5TripCursors((Fts5FullTable*)pTab);
  return sqlite3Fts5StorageSync(((Fts5FullTable*)pTab)->pStorage);
}
