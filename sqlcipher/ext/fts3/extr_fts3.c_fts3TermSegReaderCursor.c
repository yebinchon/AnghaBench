
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ pVtab; } ;
struct TYPE_17__ {int iLangid; TYPE_1__ base; } ;
struct TYPE_16__ {int bLookup; } ;
struct TYPE_15__ {int nIndex; TYPE_2__* aIndex; } ;
struct TYPE_14__ {int nPrefix; } ;
typedef TYPE_3__ Fts3Table ;
typedef TYPE_4__ Fts3MultiSegReader ;
typedef TYPE_5__ Fts3Cursor ;


 int FTS3_SEGCURSOR_ALL ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int fts3SegReaderCursorAddZero (TYPE_3__*,int ,char const*,int,TYPE_4__*) ;
 int sqlite3Fts3SegReaderCursor (TYPE_3__*,int ,int,int ,char const*,int,int,int ,TYPE_4__*) ;
 TYPE_4__* sqlite3_malloc (int) ;

__attribute__((used)) static int fts3TermSegReaderCursor(
  Fts3Cursor *pCsr,
  const char *zTerm,
  int nTerm,
  int isPrefix,
  Fts3MultiSegReader **ppSegcsr
){
  Fts3MultiSegReader *pSegcsr;
  int rc = SQLITE_NOMEM;

  pSegcsr = sqlite3_malloc(sizeof(Fts3MultiSegReader));
  if( pSegcsr ){
    int i;
    int bFound = 0;
    Fts3Table *p = (Fts3Table *)pCsr->base.pVtab;

    if( isPrefix ){
      for(i=1; bFound==0 && i<p->nIndex; i++){
        if( p->aIndex[i].nPrefix==nTerm ){
          bFound = 1;
          rc = sqlite3Fts3SegReaderCursor(p, pCsr->iLangid,
              i, FTS3_SEGCURSOR_ALL, zTerm, nTerm, 0, 0, pSegcsr
          );
          pSegcsr->bLookup = 1;
        }
      }

      for(i=1; bFound==0 && i<p->nIndex; i++){
        if( p->aIndex[i].nPrefix==nTerm+1 ){
          bFound = 1;
          rc = sqlite3Fts3SegReaderCursor(p, pCsr->iLangid,
              i, FTS3_SEGCURSOR_ALL, zTerm, nTerm, 1, 0, pSegcsr
          );
          if( rc==SQLITE_OK ){
            rc = fts3SegReaderCursorAddZero(
                p, pCsr->iLangid, zTerm, nTerm, pSegcsr
            );
          }
        }
      }
    }

    if( bFound==0 ){
      rc = sqlite3Fts3SegReaderCursor(p, pCsr->iLangid,
          0, FTS3_SEGCURSOR_ALL, zTerm, nTerm, isPrefix, 0, pSegcsr
      );
      pSegcsr->bLookup = !isPrefix;
    }
  }

  *ppSegcsr = pSegcsr;
  return rc;
}
