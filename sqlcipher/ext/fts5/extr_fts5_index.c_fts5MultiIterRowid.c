
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_7__ {TYPE_2__* aFirst; TYPE_1__* aSeg; } ;
struct TYPE_6__ {size_t iFirst; } ;
struct TYPE_5__ {int iRowid; int pLeaf; } ;
typedef TYPE_3__ Fts5Iter ;


 int assert (int ) ;

__attribute__((used)) static i64 fts5MultiIterRowid(Fts5Iter *pIter){
  assert( pIter->aSeg[ pIter->aFirst[1].iFirst ].pLeaf );
  return pIter->aSeg[ pIter->aFirst[1].iFirst ].iRowid;
}
