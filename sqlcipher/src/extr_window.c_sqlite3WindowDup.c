
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_6__ {int * pOwner; void* pEnd; void* pStart; int eExclude; int eStart; int eEnd; int eFrmType; void* pOrderBy; void* pPartition; int pFunc; void* pFilter; int zName; } ;
typedef TYPE_1__ Window ;
typedef int Expr ;


 scalar_t__ ALWAYS (TYPE_1__*) ;
 TYPE_1__* sqlite3DbMallocZero (int *,int) ;
 int sqlite3DbStrDup (int *,int ) ;
 void* sqlite3ExprDup (int *,void*,int ) ;
 void* sqlite3ExprListDup (int *,void*,int ) ;

Window *sqlite3WindowDup(sqlite3 *db, Expr *pOwner, Window *p){
  Window *pNew = 0;
  if( ALWAYS(p) ){
    pNew = sqlite3DbMallocZero(db, sizeof(Window));
    if( pNew ){
      pNew->zName = sqlite3DbStrDup(db, p->zName);
      pNew->pFilter = sqlite3ExprDup(db, p->pFilter, 0);
      pNew->pFunc = p->pFunc;
      pNew->pPartition = sqlite3ExprListDup(db, p->pPartition, 0);
      pNew->pOrderBy = sqlite3ExprListDup(db, p->pOrderBy, 0);
      pNew->eFrmType = p->eFrmType;
      pNew->eEnd = p->eEnd;
      pNew->eStart = p->eStart;
      pNew->eExclude = p->eExclude;
      pNew->pStart = sqlite3ExprDup(db, p->pStart, 0);
      pNew->pEnd = sqlite3ExprDup(db, p->pEnd, 0);
      pNew->pOwner = pOwner;
    }
  }
  return pNew;
}
