
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* pHash; int zBasis; } ;
typedef TYPE_1__ fuzzer_stem ;
struct TYPE_7__ {int zBuf; TYPE_1__** apHash; int nBuf; } ;
typedef TYPE_2__ fuzzer_cursor ;


 scalar_t__ SQLITE_NOMEM ;
 unsigned int fuzzerHash (int ) ;
 scalar_t__ fuzzerRender (TYPE_1__*,int *,int *) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int fuzzerSeen(fuzzer_cursor *pCur, fuzzer_stem *pStem){
  unsigned int h;
  fuzzer_stem *pLookup;

  if( fuzzerRender(pStem, &pCur->zBuf, &pCur->nBuf)==SQLITE_NOMEM ){
    return -1;
  }
  h = fuzzerHash(pCur->zBuf);
  pLookup = pCur->apHash[h];
  while( pLookup && strcmp(pLookup->zBasis, pCur->zBuf)!=0 ){
    pLookup = pLookup->pHash;
  }
  return pLookup!=0;
}
