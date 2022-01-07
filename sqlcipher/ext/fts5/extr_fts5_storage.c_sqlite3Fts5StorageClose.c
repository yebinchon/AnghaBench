
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * aStmt; } ;
typedef TYPE_1__ Fts5Storage ;


 int ArraySize (int *) ;
 int SQLITE_OK ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_1__*) ;

int sqlite3Fts5StorageClose(Fts5Storage *p){
  int rc = SQLITE_OK;
  if( p ){
    int i;


    for(i=0; i<ArraySize(p->aStmt); i++){
      sqlite3_finalize(p->aStmt[i]);
    }

    sqlite3_free(p);
  }
  return rc;
}
