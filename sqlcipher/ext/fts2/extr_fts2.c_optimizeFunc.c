
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef int sqlite3_context ;
typedef int readers ;
typedef int pCursor ;
typedef int fulltext_vtab ;
typedef int fulltext_cursor ;
typedef int buf ;
struct TYPE_5__ {int segment; int reader; } ;
typedef TYPE_1__ OptLeavesReader ;
typedef int LeafWriter ;


 int SEGDIR_SELECT_ALL_STMT ;
 scalar_t__ SQLITE_BLOB ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int SQLITE_STATIC ;
 int assert (int) ;
 int * cursor_vtab (int *) ;
 int flushPendingTerms (int *) ;
 int leafWriterDestroy (int *) ;
 int leafWriterFinalize (int *,int *) ;
 int leafWriterInit (int,int ,int *) ;
 int leavesReaderDestroy (int *) ;
 int leavesReaderInit (int *,int,int ,int ,char const*,int,int *) ;
 int memcpy (int **,int ,int) ;
 int optimizeInternal (int *,TYPE_1__*,int,int *) ;
 int segdir_count (int *,int*,int*) ;
 int segdir_delete (int *,int) ;
 int sql_get_statement (int *,int ,int **) ;
 char* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_int64 (int *,int) ;
 int sqlite3_context_db_handle (int *) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_free (TYPE_1__*) ;
 TYPE_1__* sqlite3_malloc (int) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_snprintf (int,char*,char*,int ) ;
 int sqlite3_step (int *) ;
 int sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void optimizeFunc(sqlite3_context *pContext,
                         int argc, sqlite3_value **argv){
  fulltext_cursor *pCursor;
  if( argc>1 ){
    sqlite3_result_error(pContext, "excess arguments to optimize()",-1);
  }else if( sqlite3_value_type(argv[0])!=SQLITE_BLOB ||
            sqlite3_value_bytes(argv[0])!=sizeof(pCursor) ){
    sqlite3_result_error(pContext, "illegal first argument to optimize",-1);
  }else{
    fulltext_vtab *v;
    int i, rc, iMaxLevel;
    OptLeavesReader *readers;
    int nReaders;
    LeafWriter writer;
    sqlite3_stmt *s;

    memcpy(&pCursor, sqlite3_value_blob(argv[0]), sizeof(pCursor));
    v = cursor_vtab(pCursor);


    rc = flushPendingTerms(v);
    if( rc!=SQLITE_OK ) goto err;

    rc = segdir_count(v, &nReaders, &iMaxLevel);
    if( rc!=SQLITE_OK ) goto err;
    if( nReaders==0 || nReaders==1 ){
      sqlite3_result_text(pContext, "Index already optimal", -1,
                          SQLITE_STATIC);
      return;
    }

    rc = sql_get_statement(v, SEGDIR_SELECT_ALL_STMT, &s);
    if( rc!=SQLITE_OK ) goto err;

    readers = sqlite3_malloc(nReaders*sizeof(readers[0]));
    if( readers==((void*)0) ) goto err;




    leafWriterInit(iMaxLevel, 0, &writer);

    i = 0;
    while( (rc = sqlite3_step(s))==SQLITE_ROW ){
      sqlite_int64 iStart = sqlite3_column_int64(s, 0);
      sqlite_int64 iEnd = sqlite3_column_int64(s, 1);
      const char *pRootData = sqlite3_column_blob(s, 2);
      int nRootData = sqlite3_column_bytes(s, 2);

      assert( i<nReaders );
      rc = leavesReaderInit(v, -1, iStart, iEnd, pRootData, nRootData,
                            &readers[i].reader);
      if( rc!=SQLITE_OK ) break;

      readers[i].segment = i;
      i++;
    }


    if( rc==SQLITE_DONE ){
      assert( i==nReaders );
      rc = optimizeInternal(v, readers, nReaders, &writer);
    }

    while( i-- > 0 ){
      leavesReaderDestroy(&readers[i].reader);
    }
    sqlite3_free(readers);




    if( rc==SQLITE_OK ){
      for( i=0; i<=iMaxLevel; i++ ){
        rc = segdir_delete(v, i);
        if( rc!=SQLITE_OK ) break;
      }

      if( rc==SQLITE_OK ) rc = leafWriterFinalize(v, &writer);
    }

    leafWriterDestroy(&writer);

    if( rc!=SQLITE_OK ) goto err;

    sqlite3_result_text(pContext, "Index optimized", -1, SQLITE_STATIC);
    return;




 err:
    {
      char buf[512];
      sqlite3_snprintf(sizeof(buf), buf, "Error in optimize: %s",
                       sqlite3_errmsg(sqlite3_context_db_handle(pContext)));
      sqlite3_result_error(pContext, buf, -1);
    }
  }
}
