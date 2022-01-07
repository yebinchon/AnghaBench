
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int Trigger ;
struct TYPE_10__ {scalar_t__* aAction; int ** apTrigger; } ;
struct TYPE_9__ {TYPE_1__* pTriggerPrg; } ;
struct TYPE_8__ {int * pTrigger; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ FKey ;


 scalar_t__ OE_SetNull ;
 TYPE_2__* sqlite3ParseToplevel (TYPE_2__*) ;

__attribute__((used)) static int isSetNullAction(Parse *pParse, FKey *pFKey){
  Parse *pTop = sqlite3ParseToplevel(pParse);
  if( pTop->pTriggerPrg ){
    Trigger *p = pTop->pTriggerPrg->pTrigger;
    if( (p==pFKey->apTrigger[0] && pFKey->aAction[0]==OE_SetNull)
     || (p==pFKey->apTrigger[1] && pFKey->aAction[1]==OE_SetNull)
    ){
      return 1;
    }
  }
  return 0;
}
