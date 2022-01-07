
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zBase; int * pOrderBy; int * pPartition; } ;
typedef TYPE_1__ Window ;
struct TYPE_9__ {int n; int z; } ;
typedef TYPE_2__ Token ;
struct TYPE_10__ {int db; } ;
typedef TYPE_3__ Parse ;
typedef int ExprList ;


 int sqlite3DbStrNDup (int ,int ,int ) ;
 int sqlite3ExprListDelete (int ,int *) ;

Window *sqlite3WindowAssemble(
  Parse *pParse,
  Window *pWin,
  ExprList *pPartition,
  ExprList *pOrderBy,
  Token *pBase
){
  if( pWin ){
    pWin->pPartition = pPartition;
    pWin->pOrderBy = pOrderBy;
    if( pBase ){
      pWin->zBase = sqlite3DbStrNDup(pParse->db, pBase->z, pBase->n);
    }
  }else{
    sqlite3ExprListDelete(pParse->db, pPartition);
    sqlite3ExprListDelete(pParse->db, pOrderBy);
  }
  return pWin;
}
