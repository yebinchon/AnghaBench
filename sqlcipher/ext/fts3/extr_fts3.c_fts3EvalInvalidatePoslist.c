
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bFreeList; scalar_t__ nList; scalar_t__ pList; } ;
struct TYPE_5__ {TYPE_1__ doclist; } ;
typedef TYPE_2__ Fts3Phrase ;


 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void fts3EvalInvalidatePoslist(Fts3Phrase *pPhrase){
  if( pPhrase->doclist.bFreeList ){
    sqlite3_free(pPhrase->doclist.pList);
  }
  pPhrase->doclist.pList = 0;
  pPhrase->doclist.nList = 0;
  pPhrase->doclist.bFreeList = 0;
}
