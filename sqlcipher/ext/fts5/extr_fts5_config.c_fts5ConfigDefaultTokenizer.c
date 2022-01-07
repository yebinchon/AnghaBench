
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pTok; scalar_t__ pTokApi; } ;
typedef int Fts5Global ;
typedef TYPE_1__ Fts5Config ;


 int assert (int) ;
 int sqlite3Fts5GetTokenizer (int *,int ,int ,scalar_t__*,scalar_t__*,int ) ;

__attribute__((used)) static int fts5ConfigDefaultTokenizer(Fts5Global *pGlobal, Fts5Config *pConfig){
  assert( pConfig->pTok==0 && pConfig->pTokApi==0 );
  return sqlite3Fts5GetTokenizer(
      pGlobal, 0, 0, &pConfig->pTok, &pConfig->pTokApi, 0
  );
}
