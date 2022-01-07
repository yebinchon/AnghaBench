
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pReader; struct TYPE_5__* zDataTbl; int pHash; int pDataVersion; int pIdxSelect; int pIdxDeleter; int pIdxWriter; int pDeleter; int pWriter; } ;
typedef TYPE_1__ Fts5Index ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts5StructureInvalidate (TYPE_1__*) ;
 int sqlite3Fts5HashFree (int ) ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_1__*) ;

int sqlite3Fts5IndexClose(Fts5Index *p){
  int rc = SQLITE_OK;
  if( p ){
    assert( p->pReader==0 );
    fts5StructureInvalidate(p);
    sqlite3_finalize(p->pWriter);
    sqlite3_finalize(p->pDeleter);
    sqlite3_finalize(p->pIdxWriter);
    sqlite3_finalize(p->pIdxDeleter);
    sqlite3_finalize(p->pIdxSelect);
    sqlite3_finalize(p->pDataVersion);
    sqlite3Fts5HashFree(p->pHash);
    sqlite3_free(p->zDataTbl);
    sqlite3_free(p);
  }
  return rc;
}
