
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int aAll; } ;
struct TYPE_7__ {int nToken; TYPE_1__* aToken; TYPE_4__ doclist; } ;
struct TYPE_6__ {scalar_t__ pSegcsr; } ;
typedef TYPE_2__ Fts3Phrase ;
typedef int Fts3Doclist ;


 int fts3EvalInvalidatePoslist (TYPE_2__*) ;
 int fts3SegReaderCursorFree (scalar_t__) ;
 int memset (TYPE_4__*,int ,int) ;
 int sqlite3_free (int ) ;

void sqlite3Fts3EvalPhraseCleanup(Fts3Phrase *pPhrase){
  if( pPhrase ){
    int i;
    sqlite3_free(pPhrase->doclist.aAll);
    fts3EvalInvalidatePoslist(pPhrase);
    memset(&pPhrase->doclist, 0, sizeof(Fts3Doclist));
    for(i=0; i<pPhrase->nToken; i++){
      fts3SegReaderCursorFree(pPhrase->aToken[i].pSegcsr);
      pPhrase->aToken[i].pSegcsr = 0;
    }
  }
}
