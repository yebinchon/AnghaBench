
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_10__ {TYPE_3__* pTokenizer; } ;
typedef TYPE_2__ sqlite3_tokenizer_cursor ;
struct TYPE_11__ {TYPE_1__* pModule; } ;
typedef TYPE_3__ sqlite3_tokenizer ;
struct TYPE_9__ {int (* xOpen ) (TYPE_3__*,char const*,int,TYPE_2__**) ;int (* xNext ) (TYPE_2__*,char const**,int*,int*,int*,int*) ;int (* xClose ) (TYPE_2__*) ;} ;
typedef int Hash ;
typedef int DocList ;


 int DL_POSITIONS_OFFSETS ;
 int HASH_STRING ;
 int * HashFind (int *,char const*,int) ;
 int HashInit (int *,int ,int) ;
 int HashInsert (int *,char const*,int,int *) ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int docListAddDocid (int *,int ) ;
 int docListAddPosOffset (int *,int,int,int) ;
 int * docListNew (int ) ;
 int stub1 (TYPE_3__*,char const*,int,TYPE_2__**) ;
 int stub2 (TYPE_2__*,char const**,int*,int*,int*,int*) ;
 int stub3 (TYPE_2__*) ;

__attribute__((used)) static int build_terms(Hash *terms, sqlite3_tokenizer *pTokenizer,
                       const char *zText, sqlite_int64 iDocid){
  sqlite3_tokenizer_cursor *pCursor;
  const char *pToken;
  int nTokenBytes;
  int iStartOffset, iEndOffset, iPosition;

  int rc = pTokenizer->pModule->xOpen(pTokenizer, zText, -1, &pCursor);
  if( rc!=SQLITE_OK ) return rc;

  pCursor->pTokenizer = pTokenizer;
  HashInit(terms, HASH_STRING, 1);
  while( SQLITE_OK==pTokenizer->pModule->xNext(pCursor,
                                               &pToken, &nTokenBytes,
                                               &iStartOffset, &iEndOffset,
                                               &iPosition) ){
    DocList *p;


    if( iPosition<0 ) {
      rc = SQLITE_ERROR;
      goto err;
    }

    p = HashFind(terms, pToken, nTokenBytes);
    if( p==((void*)0) ){
      p = docListNew(DL_POSITIONS_OFFSETS);
      docListAddDocid(p, iDocid);
      HashInsert(terms, pToken, nTokenBytes, p);
    }
    docListAddPosOffset(p, iPosition, iStartOffset, iEndOffset);
  }

err:





  pTokenizer->pModule->xClose(pCursor);
  return rc;
}
