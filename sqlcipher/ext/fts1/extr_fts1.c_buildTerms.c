
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_12__ {TYPE_3__* pTokenizer; } ;
typedef TYPE_2__ sqlite3_tokenizer_cursor ;
struct TYPE_13__ {TYPE_1__* pModule; } ;
typedef TYPE_3__ sqlite3_tokenizer ;
struct TYPE_14__ {TYPE_3__* pTokenizer; } ;
typedef TYPE_4__ fulltext_vtab ;
typedef int fts1Hash ;
struct TYPE_11__ {int (* xOpen ) (TYPE_3__*,char const*,int,TYPE_2__**) ;int (* xNext ) (TYPE_2__*,char const**,int*,int*,int*,int*) ;int (* xClose ) (TYPE_2__*) ;} ;
typedef int DocList ;


 int DL_DEFAULT ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int docListAddDocid (int *,int ) ;
 int docListAddPosOffset (int *,int,int,int,int) ;
 int * docListNew (int ) ;
 int * fts1HashFind (int *,char const*,int) ;
 int fts1HashInsert (int *,char const*,int,int *) ;
 int stub1 (TYPE_3__*,char const*,int,TYPE_2__**) ;
 int stub2 (TYPE_2__*,char const**,int*,int*,int*,int*) ;
 int stub3 (TYPE_2__*) ;
 int stub4 (TYPE_2__*) ;

__attribute__((used)) static int buildTerms(fulltext_vtab *v, fts1Hash *terms, sqlite_int64 iDocid,
                      const char *zText, int iColumn){
  sqlite3_tokenizer *pTokenizer = v->pTokenizer;
  sqlite3_tokenizer_cursor *pCursor;
  const char *pToken;
  int nTokenBytes;
  int iStartOffset, iEndOffset, iPosition;
  int rc;

  rc = pTokenizer->pModule->xOpen(pTokenizer, zText, -1, &pCursor);
  if( rc!=SQLITE_OK ) return rc;

  pCursor->pTokenizer = pTokenizer;
  while( SQLITE_OK==pTokenizer->pModule->xNext(pCursor,
                                               &pToken, &nTokenBytes,
                                               &iStartOffset, &iEndOffset,
                                               &iPosition) ){
    DocList *p;


    if( iPosition<0 ){
      pTokenizer->pModule->xClose(pCursor);
      return SQLITE_ERROR;
    }

    p = fts1HashFind(terms, pToken, nTokenBytes);
    if( p==((void*)0) ){
      p = docListNew(DL_DEFAULT);
      docListAddDocid(p, iDocid);
      fts1HashInsert(terms, pToken, nTokenBytes, p);
    }
    if( iColumn>=0 ){
      docListAddPosOffset(p, iColumn, iPosition, iStartOffset, iEndOffset);
    }
  }






  pTokenizer->pModule->xClose(pCursor);
  return rc;
}
