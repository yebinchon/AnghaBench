
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ TestDb ;
struct TYPE_5__ {int (* xClose ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

int tdb_close(TestDb *pDb){
  if( pDb ){
    return pDb->pMethods->xClose(pDb);
  }
  return 0;
}
