
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int SQLITE_TRANSIENT ;
 int UNUSED_PARAM2 (int,int **) ;
 int assert (int) ;
 int sqlite3_result_text (int *,char*,int,int ) ;

__attribute__((used)) static void fts5SourceIdFunc(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apUnused
){
  assert( nArg==0 );
  UNUSED_PARAM2(nArg, apUnused);
  sqlite3_result_text(pCtx, "--FTS5-SOURCE-ID--", -1, SQLITE_TRANSIENT);
}
