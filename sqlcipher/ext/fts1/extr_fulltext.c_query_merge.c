
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;
struct TYPE_9__ {int nData; } ;
typedef int DocListMerge ;
typedef TYPE_1__ DocList ;


 int DL_POSITIONS_OFFSETS ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int docListDestroy (TYPE_1__*) ;
 int docListInit (TYPE_1__*,int ,int ,int ) ;
 int mergeBlock (int *,TYPE_1__*) ;
 int mergeInit (int *,TYPE_1__*,int,TYPE_1__*) ;
 int sqlite3_column_blob (int *,int ) ;
 int sqlite3_column_bytes (int *,int ) ;
 int sqlite3_step (int *) ;
 int term_select_doclist (int *,char const*,int,int **) ;

__attribute__((used)) static int query_merge(fulltext_vtab *v, sqlite3_stmt **pSelect,
                       const char *zTerm,
                       DocList *pIn, int iOffset, DocList *out){
  int rc;
  DocListMerge merge;

  if( pIn!=((void*)0) && !pIn->nData ){


      return SQLITE_OK;
  }

  rc = term_select_doclist(v, zTerm, -1, pSelect);
  if( rc!=SQLITE_ROW && rc!=SQLITE_DONE ) return rc;

  mergeInit(&merge, pIn, iOffset, out);
  while( rc==SQLITE_ROW ){
    DocList block;
    docListInit(&block, DL_POSITIONS_OFFSETS,
                sqlite3_column_blob(*pSelect, 0),
                sqlite3_column_bytes(*pSelect, 0));
    mergeBlock(&merge, &block);
    docListDestroy(&block);

    rc = sqlite3_step(*pSelect);
    if( rc!=SQLITE_ROW && rc!=SQLITE_DONE ){
      return rc;
    }
  }

  return SQLITE_OK;
}
