
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_10__ {int eType; int nChild; struct TYPE_10__** apChild; TYPE_3__* pNear; scalar_t__ bEof; int iRowid; } ;
struct TYPE_9__ {TYPE_2__** apPhrase; } ;
struct TYPE_7__ {int n; } ;
struct TYPE_8__ {TYPE_1__ poslist; } ;
typedef TYPE_4__ Fts5ExprNode ;



 int FTS5_NOT ;



 int assert (int) ;
 int fts5ExprClearPoslists (TYPE_4__*) ;

__attribute__((used)) static int fts5ExprCheckPoslists(Fts5ExprNode *pNode, i64 iRowid){
  pNode->iRowid = iRowid;
  pNode->bEof = 0;
  switch( pNode->eType ){
    case 128:
    case 129:
      return (pNode->pNear->apPhrase[0]->poslist.n>0);

    case 131: {
      int i;
      for(i=0; i<pNode->nChild; i++){
        if( fts5ExprCheckPoslists(pNode->apChild[i], iRowid)==0 ){
          fts5ExprClearPoslists(pNode);
          return 0;
        }
      }
      break;
    }

    case 130: {
      int i;
      int bRet = 0;
      for(i=0; i<pNode->nChild; i++){
        if( fts5ExprCheckPoslists(pNode->apChild[i], iRowid) ){
          bRet = 1;
        }
      }
      return bRet;
    }

    default: {
      assert( pNode->eType==FTS5_NOT );
      if( 0==fts5ExprCheckPoslists(pNode->apChild[0], iRowid)
          || 0!=fts5ExprCheckPoslists(pNode->apChild[1], iRowid)
        ){
        fts5ExprClearPoslists(pNode);
        return 0;
      }
      break;
    }
  }
  return 1;
}
