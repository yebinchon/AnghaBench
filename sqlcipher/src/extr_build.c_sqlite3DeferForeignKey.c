
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {TYPE_3__* pFKey; } ;
typedef TYPE_1__ Table ;
struct TYPE_7__ {scalar_t__ isDeferred; } ;
struct TYPE_6__ {TYPE_1__* pNewTable; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ FKey ;


 int assert (int) ;

void sqlite3DeferForeignKey(Parse *pParse, int isDeferred){

  Table *pTab;
  FKey *pFKey;
  if( (pTab = pParse->pNewTable)==0 || (pFKey = pTab->pFKey)==0 ) return;
  assert( isDeferred==0 || isDeferred==1 );
  pFKey->isDeferred = (u8)isDeferred;

}
