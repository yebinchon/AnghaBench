
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char u8 ;
struct TYPE_7__ {int* aMI; struct TYPE_7__* pRight; struct TYPE_7__* pLeft; TYPE_2__* pPhrase; } ;
struct TYPE_5__ {char* pList; } ;
struct TYPE_6__ {TYPE_1__ doclist; } ;
typedef TYPE_2__ Fts3Phrase ;
typedef TYPE_3__ Fts3Expr ;


 int fts3GetVarint32 (char*,int*) ;

__attribute__((used)) static void fts3EvalUpdateCounts(Fts3Expr *pExpr, int nCol){
  if( pExpr ){
    Fts3Phrase *pPhrase = pExpr->pPhrase;
    if( pPhrase && pPhrase->doclist.pList ){
      int iCol = 0;
      char *p = pPhrase->doclist.pList;

      do{
        u8 c = 0;
        int iCnt = 0;
        while( 0xFE & (*p | c) ){
          if( (c&0x80)==0 ) iCnt++;
          c = *p++ & 0x80;
        }




        pExpr->aMI[iCol*3 + 1] += iCnt;
        pExpr->aMI[iCol*3 + 2] += (iCnt>0);
        if( *p==0x00 ) break;
        p++;
        p += fts3GetVarint32(p, &iCol);
      }while( iCol<nCol );
    }

    fts3EvalUpdateCounts(pExpr->pLeft, nCol);
    fts3EvalUpdateCounts(pExpr->pRight, nCol);
  }
}
