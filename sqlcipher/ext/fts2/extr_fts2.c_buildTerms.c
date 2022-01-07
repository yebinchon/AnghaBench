
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct fts2HashElem {int dummy; } ;
typedef int sqlite_int64 ;
struct TYPE_21__ {TYPE_5__* pTokenizer; } ;
typedef TYPE_4__ sqlite3_tokenizer_cursor ;
struct TYPE_22__ {TYPE_3__* pModule; } ;
typedef TYPE_5__ sqlite3_tokenizer ;
struct TYPE_23__ {int nPendingData; int pendingTerms; TYPE_5__* pTokenizer; } ;
typedef TYPE_6__ fulltext_vtab ;
struct TYPE_19__ {int nData; } ;
struct TYPE_18__ {int iPrevDocid; } ;
struct TYPE_24__ {TYPE_2__ b; TYPE_1__ dlw; } ;
struct TYPE_20__ {int (* xOpen ) (TYPE_5__*,char const*,int,TYPE_4__**) ;int (* xNext ) (TYPE_4__*,char const**,int*,int*,int*,int*) ;int (* xClose ) (TYPE_4__*) ;} ;
typedef TYPE_7__ DLCollector ;


 int DL_DEFAULT ;
 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int dlcAddPos (TYPE_7__*,int,int,int,int) ;
 TYPE_7__* dlcNew (int ,int ) ;
 int dlcNext (TYPE_7__*,int ) ;
 TYPE_7__* fts2HashFind (int *,char const*,int) ;
 int fts2HashInsert (int *,char const*,int,TYPE_7__*) ;
 int stub1 (TYPE_5__*,char const*,int,TYPE_4__**) ;
 int stub2 (TYPE_4__*,char const**,int*,int*,int*,int*) ;
 int stub3 (TYPE_4__*) ;

__attribute__((used)) static int buildTerms(fulltext_vtab *v, sqlite_int64 iDocid,
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
  while( SQLITE_OK==(rc=pTokenizer->pModule->xNext(pCursor,
                                                   &pToken, &nTokenBytes,
                                                   &iStartOffset, &iEndOffset,
                                                   &iPosition)) ){
    DLCollector *p;
    int nData;



    if( iPosition<0 || pToken == ((void*)0) || nTokenBytes == 0 ){
      rc = SQLITE_ERROR;
      break;
    }

    p = fts2HashFind(&v->pendingTerms, pToken, nTokenBytes);
    if( p==((void*)0) ){
      nData = 0;
      p = dlcNew(iDocid, DL_DEFAULT);
      fts2HashInsert(&v->pendingTerms, pToken, nTokenBytes, p);


      v->nPendingData += sizeof(struct fts2HashElem)+sizeof(*p)+nTokenBytes;
    }else{
      nData = p->b.nData;
      if( p->dlw.iPrevDocid!=iDocid ) dlcNext(p, iDocid);
    }
    if( iColumn>=0 ){
      dlcAddPos(p, iColumn, iPosition, iStartOffset, iEndOffset);
    }


    v->nPendingData += p->b.nData-nData;
  }






  pTokenizer->pModule->xClose(pCursor);
  if( SQLITE_DONE == rc ) return SQLITE_OK;
  return rc;
}
