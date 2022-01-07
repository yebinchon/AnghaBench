
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
struct TYPE_11__ {scalar_t__ nPendingData; int nColumn; } ;
typedef TYPE_1__ fulltext_vtab ;
struct TYPE_12__ {scalar_t__ nData; int pData; } ;
typedef int DocListType ;
typedef TYPE_2__ DataBuffer ;


 int DL_DEFAULT ;
 int SEGDIR_SELECT_ALL_STMT ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (int) ;
 int dataBufferDestroy (TYPE_2__*) ;
 int dataBufferInit (TYPE_2__*,int ) ;
 int docListTrim (int ,int ,scalar_t__,int,int ,TYPE_2__*) ;
 int loadSegment (TYPE_1__*,char const*,int const,int const,char const*,int,int,TYPE_2__*) ;
 int sql_get_statement (TYPE_1__*,int ,int **) ;
 char* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_int64 (int *,int) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int termSelect(fulltext_vtab *v, int iColumn,
                      const char *pTerm, int nTerm, int isPrefix,
                      DocListType iType, DataBuffer *out){
  DataBuffer doclist;
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, SEGDIR_SELECT_ALL_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;


  assert( v->nPendingData<0 );

  dataBufferInit(&doclist, 0);




  while( (rc = sqlite3_step(s))==SQLITE_ROW ){
    const char *pData = sqlite3_column_blob(s, 2);
    const int nData = sqlite3_column_bytes(s, 2);
    const sqlite_int64 iLeavesEnd = sqlite3_column_int64(s, 1);
    rc = loadSegment(v, pData, nData, iLeavesEnd, pTerm, nTerm, isPrefix,
                     &doclist);
    if( rc!=SQLITE_OK ) goto err;
  }
  if( rc==SQLITE_DONE ){
    if( doclist.nData!=0 ){





      if( iColumn==v->nColumn) iColumn = -1;
      docListTrim(DL_DEFAULT, doclist.pData, doclist.nData,
                  iColumn, iType, out);
    }
    rc = SQLITE_OK;
  }

 err:
  dataBufferDestroy(&doclist);
  return rc;
}
