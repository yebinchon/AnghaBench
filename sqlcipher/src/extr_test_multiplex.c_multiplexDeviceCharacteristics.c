
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_9__ {int pGroup; } ;
typedef TYPE_3__ multiplexConn ;
struct TYPE_7__ {int (* xDeviceCharacteristics ) (TYPE_2__*) ;} ;


 TYPE_2__* multiplexSubOpen (int ,int ,int*,int *,int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int multiplexDeviceCharacteristics(sqlite3_file *pConn){
  multiplexConn *p = (multiplexConn*)pConn;
  int rc;
  sqlite3_file *pSubOpen = multiplexSubOpen(p->pGroup, 0, &rc, ((void*)0), 0);
  if( pSubOpen ){
    return pSubOpen->pMethods->xDeviceCharacteristics(pSubOpen);
  }
  return 0;
}
