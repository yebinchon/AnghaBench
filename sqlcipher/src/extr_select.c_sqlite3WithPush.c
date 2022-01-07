
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {struct TYPE_5__* pOuter; } ;
typedef TYPE_1__ With ;
struct TYPE_6__ {TYPE_1__* pWithToFree; TYPE_1__* pWith; } ;
typedef TYPE_2__ Parse ;


 int assert (int) ;

void sqlite3WithPush(Parse *pParse, With *pWith, u8 bFree){
  assert( bFree==0 || (pParse->pWith==0 && pParse->pWithToFree==0) );
  if( pWith ){
    assert( pParse->pWith!=pWith );
    pWith->pOuter = pParse->pWith;
    pParse->pWith = pWith;
    if( bFree ) pParse->pWithToFree = pWith;
  }
}
