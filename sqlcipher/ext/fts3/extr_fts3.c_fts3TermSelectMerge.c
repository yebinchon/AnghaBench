
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char** aaOutput; int* anOutput; } ;
typedef TYPE_1__ TermSelect ;
struct TYPE_6__ {int bDescIdx; } ;
typedef TYPE_2__ Fts3Table ;


 scalar_t__ FTS3_VARINT_MAX ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SizeofArray (char**) ;
 int assert (int) ;
 int fts3DoclistOrMerge (int ,char*,int,char*,int,char**,int*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,scalar_t__) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc (scalar_t__) ;

__attribute__((used)) static int fts3TermSelectMerge(
  Fts3Table *p,
  TermSelect *pTS,
  char *aDoclist,
  int nDoclist
){
  if( pTS->aaOutput[0]==0 ){
    pTS->aaOutput[0] = sqlite3_malloc(nDoclist + FTS3_VARINT_MAX + 1);
    pTS->anOutput[0] = nDoclist;
    if( pTS->aaOutput[0] ){
      memcpy(pTS->aaOutput[0], aDoclist, nDoclist);
      memset(&pTS->aaOutput[0][nDoclist], 0, FTS3_VARINT_MAX);
    }else{
      return SQLITE_NOMEM;
    }
  }else{
    char *aMerge = aDoclist;
    int nMerge = nDoclist;
    int iOut;

    for(iOut=0; iOut<SizeofArray(pTS->aaOutput); iOut++){
      if( pTS->aaOutput[iOut]==0 ){
        assert( iOut>0 );
        pTS->aaOutput[iOut] = aMerge;
        pTS->anOutput[iOut] = nMerge;
        break;
      }else{
        char *aNew;
        int nNew;

        int rc = fts3DoclistOrMerge(p->bDescIdx, aMerge, nMerge,
            pTS->aaOutput[iOut], pTS->anOutput[iOut], &aNew, &nNew
        );
        if( rc!=SQLITE_OK ){
          if( aMerge!=aDoclist ) sqlite3_free(aMerge);
          return rc;
        }

        if( aMerge!=aDoclist ) sqlite3_free(aMerge);
        sqlite3_free(pTS->aaOutput[iOut]);
        pTS->aaOutput[iOut] = 0;

        aMerge = aNew;
        nMerge = nNew;
        if( (iOut+1)==SizeofArray(pTS->aaOutput) ){
          pTS->aaOutput[iOut] = aMerge;
          pTS->anOutput[iOut] = nMerge;
        }
      }
    }
  }
  return SQLITE_OK;
}
