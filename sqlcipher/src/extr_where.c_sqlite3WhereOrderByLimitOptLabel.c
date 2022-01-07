
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ addrNxt; } ;
typedef TYPE_1__ WhereLevel ;
struct TYPE_5__ {int iContinue; int nLevel; TYPE_1__* a; int bOrderedInnerLoop; } ;
typedef TYPE_2__ WhereInfo ;


 int assert (int) ;

int sqlite3WhereOrderByLimitOptLabel(WhereInfo *pWInfo){
  WhereLevel *pInner;
  if( !pWInfo->bOrderedInnerLoop ){


    return pWInfo->iContinue;
  }
  pInner = &pWInfo->a[pWInfo->nLevel-1];
  assert( pInner->addrNxt!=0 );
  return pInner->addrNxt;
}
