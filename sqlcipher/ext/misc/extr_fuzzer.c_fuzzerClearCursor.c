
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nStem; scalar_t__* apHash; scalar_t__* aQueue; scalar_t__ pDone; scalar_t__ pStem; scalar_t__ mxQueue; scalar_t__ rLimit; } ;
typedef TYPE_1__ fuzzer_cursor ;
typedef scalar_t__ fuzzer_cost ;


 int FUZZER_NQUEUE ;
 int fuzzerClearStemList (scalar_t__) ;
 int memset (scalar_t__*,int ,int) ;

__attribute__((used)) static void fuzzerClearCursor(fuzzer_cursor *pCur, int clearHash){
  int i;
  fuzzerClearStemList(pCur->pStem);
  fuzzerClearStemList(pCur->pDone);
  for(i=0; i<FUZZER_NQUEUE; i++) fuzzerClearStemList(pCur->aQueue[i]);
  pCur->rLimit = (fuzzer_cost)0;
  if( clearHash && pCur->nStem ){
    pCur->mxQueue = 0;
    pCur->pStem = 0;
    pCur->pDone = 0;
    memset(pCur->aQueue, 0, sizeof(pCur->aQueue));
    memset(pCur->apHash, 0, sizeof(pCur->apHash));
  }
  pCur->nStem = 0;
}
