
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int nPhrase; TYPE_2__** apPhrase; } ;
struct TYPE_8__ {int eType; int xNext; TYPE_4__* pNear; } ;
struct TYPE_7__ {int nTerm; TYPE_1__* aTerm; } ;
struct TYPE_6__ {int bFirst; int pSynonym; } ;
typedef TYPE_3__ Fts5ExprNode ;
typedef TYPE_4__ Fts5ExprNearset ;



 int FTS5_NOT ;


 int FTS5_TERM ;
 int assert (int) ;
 int fts5ExprNodeNext_AND ;
 int fts5ExprNodeNext_NOT ;
 int fts5ExprNodeNext_OR ;
 int fts5ExprNodeNext_STRING ;
 int fts5ExprNodeNext_TERM ;

__attribute__((used)) static void fts5ExprAssignXNext(Fts5ExprNode *pNode){
  switch( pNode->eType ){
    case 128: {
      Fts5ExprNearset *pNear = pNode->pNear;
      if( pNear->nPhrase==1 && pNear->apPhrase[0]->nTerm==1
       && pNear->apPhrase[0]->aTerm[0].pSynonym==0
       && pNear->apPhrase[0]->aTerm[0].bFirst==0
      ){
        pNode->eType = FTS5_TERM;
        pNode->xNext = fts5ExprNodeNext_TERM;
      }else{
        pNode->xNext = fts5ExprNodeNext_STRING;
      }
      break;
    };

    case 129: {
      pNode->xNext = fts5ExprNodeNext_OR;
      break;
    };

    case 130: {
      pNode->xNext = fts5ExprNodeNext_AND;
      break;
    };

    default: assert( pNode->eType==FTS5_NOT ); {
      pNode->xNext = fts5ExprNodeNext_NOT;
      break;
    };
  }
}
