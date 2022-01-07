
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int pCursor ;
struct TYPE_6__ {int nOffset; int zOffset; } ;
struct TYPE_5__ {TYPE_2__ snippet; } ;
typedef TYPE_1__ fulltext_cursor ;


 scalar_t__ SQLITE_BLOB ;
 int SQLITE_STATIC ;
 int memcpy (TYPE_1__**,int ,int) ;
 int snippetAllOffsets (TYPE_1__*) ;
 int snippetOffsetText (TYPE_2__*) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_text (int *,int ,int ,int ) ;
 int sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void snippetOffsetsFunc(
  sqlite3_context *pContext,
  int argc,
  sqlite3_value **argv
){
  fulltext_cursor *pCursor;
  if( argc<1 ) return;
  if( sqlite3_value_type(argv[0])!=SQLITE_BLOB ||
      sqlite3_value_bytes(argv[0])!=sizeof(pCursor) ){
    sqlite3_result_error(pContext, "illegal first argument to offsets",-1);
  }else{
    memcpy(&pCursor, sqlite3_value_blob(argv[0]), sizeof(pCursor));
    snippetAllOffsets(pCursor);
    snippetOffsetText(&pCursor->snippet);
    sqlite3_result_text(pContext,
                        pCursor->snippet.zOffset, pCursor->snippet.nOffset,
                        SQLITE_STATIC);
  }
}
