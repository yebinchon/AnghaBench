
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_blob ;
struct TYPE_3__ {int * pReader; } ;
typedef TYPE_1__ Fts5Index ;


 int sqlite3_blob_close (int *) ;

__attribute__((used)) static void fts5CloseReader(Fts5Index *p){
  if( p->pReader ){
    sqlite3_blob *pReader = p->pReader;
    p->pReader = 0;
    sqlite3_blob_close(pReader);
  }
}
