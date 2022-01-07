
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fulltext_vtab ;
struct TYPE_5__ {scalar_t__ pData; } ;
struct TYPE_6__ {int eof; int leafReader; int pStmt; TYPE_1__ rootData; } ;
typedef TYPE_2__ LeavesReader ;


 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (int) ;
 scalar_t__ leafReaderAtEnd (int *) ;
 int leafReaderDestroy (int *) ;
 int leafReaderInit (int ,int ,int *) ;
 int leafReaderStep (int *) ;
 int leavesReaderAtEnd (TYPE_2__*) ;
 int sqlite3_column_blob (int ,int ) ;
 int sqlite3_column_bytes (int ,int ) ;
 int sqlite3_step (int ) ;

__attribute__((used)) static int leavesReaderStep(fulltext_vtab *v, LeavesReader *pReader){
  assert( !leavesReaderAtEnd(pReader) );
  leafReaderStep(&pReader->leafReader);

  if( leafReaderAtEnd(&pReader->leafReader) ){
    int rc;
    if( pReader->rootData.pData ){
      pReader->eof = 1;
      return SQLITE_OK;
    }
    rc = sqlite3_step(pReader->pStmt);
    if( rc!=SQLITE_ROW ){
      pReader->eof = 1;
      return rc==SQLITE_DONE ? SQLITE_OK : rc;
    }
    leafReaderDestroy(&pReader->leafReader);
    leafReaderInit(sqlite3_column_blob(pReader->pStmt, 0),
                   sqlite3_column_bytes(pReader->pStmt, 0),
                   &pReader->leafReader);
  }
  return SQLITE_OK;
}
