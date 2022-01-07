
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u64 ;
typedef int sqlite3_context ;
struct TYPE_15__ {scalar_t__ pVtab; } ;
struct TYPE_19__ {int pExpr; TYPE_1__ base; } ;
struct TYPE_18__ {int nColumn; } ;
struct TYPE_17__ {int covered; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_16__ {char* z; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ StrBuffer ;
typedef TYPE_3__ SnippetFragment ;
typedef TYPE_4__ Fts3Table ;
typedef TYPE_5__ Fts3Cursor ;


 int SQLITE_OK ;
 int SQLITE_STATIC (char*) ;
 int SizeofArray (TYPE_3__*) ;
 int assert (int) ;
 int fts3BestSnippet (int,TYPE_5__*,int,int,int*,TYPE_3__*,int*) ;
 int fts3SnippetText (TYPE_5__*,TYPE_3__*,int,int,int,char const*,char const*,char const*,TYPE_2__*) ;
 int memset (TYPE_3__*,int ,int) ;
 int sqlite3Fts3SegmentsClose (TYPE_4__*) ;
 int sqlite3_free (char*) ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_result_text (int *,char*,int,int (*) (char*)) ;

void sqlite3Fts3Snippet(
  sqlite3_context *pCtx,
  Fts3Cursor *pCsr,
  const char *zStart,
  const char *zEnd,
  const char *zEllipsis,
  int iCol,
  int nToken
){
  Fts3Table *pTab = (Fts3Table *)pCsr->base.pVtab;
  int rc = SQLITE_OK;
  int i;
  StrBuffer res = {0, 0, 0};
  int nSnippet = 0;
  SnippetFragment aSnippet[4];
  int nFToken = -1;

  if( !pCsr->pExpr ){
    sqlite3_result_text(pCtx, "", 0, SQLITE_STATIC);
    return;
  }


  if( nToken<-64 ) nToken = -64;
  if( nToken>+64 ) nToken = +64;

  for(nSnippet=1; 1; nSnippet++){

    int iSnip;
    u64 mCovered = 0;
    u64 mSeen = 0;

    if( nToken>=0 ){
      nFToken = (nToken+nSnippet-1) / nSnippet;
    }else{
      nFToken = -1 * nToken;
    }

    for(iSnip=0; iSnip<nSnippet; iSnip++){
      int iBestScore = -1;
      int iRead;
      SnippetFragment *pFragment = &aSnippet[iSnip];

      memset(pFragment, 0, sizeof(*pFragment));





      for(iRead=0; iRead<pTab->nColumn; iRead++){
        SnippetFragment sF = {0, 0, 0, 0};
        int iS = 0;
        if( iCol>=0 && iRead!=iCol ) continue;


        rc = fts3BestSnippet(nFToken, pCsr, iRead, mCovered, &mSeen, &sF, &iS);
        if( rc!=SQLITE_OK ){
          goto snippet_out;
        }
        if( iS>iBestScore ){
          *pFragment = sF;
          iBestScore = iS;
        }
      }

      mCovered |= pFragment->covered;
    }




    assert( (mCovered&mSeen)==mCovered );
    if( mSeen==mCovered || nSnippet==SizeofArray(aSnippet) ) break;
  }

  assert( nFToken>0 );

  for(i=0; i<nSnippet && rc==SQLITE_OK; i++){
    rc = fts3SnippetText(pCsr, &aSnippet[i],
        i, (i==nSnippet-1), nFToken, zStart, zEnd, zEllipsis, &res
    );
  }

 snippet_out:
  sqlite3Fts3SegmentsClose(pTab);
  if( rc!=SQLITE_OK ){
    sqlite3_result_error_code(pCtx, rc);
    sqlite3_free(res.z);
  }else{
    sqlite3_result_text(pCtx, res.z, -1, sqlite3_free);
  }
}
