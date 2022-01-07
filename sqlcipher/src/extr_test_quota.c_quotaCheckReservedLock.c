
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_7__ {int (* xCheckReservedLock ) (TYPE_2__*,int*) ;} ;


 TYPE_2__* quotaSubOpen (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int*) ;

__attribute__((used)) static int quotaCheckReservedLock(sqlite3_file *pConn, int *pResOut){
  sqlite3_file *pSubOpen = quotaSubOpen(pConn);
  return pSubOpen->pMethods->xCheckReservedLock(pSubOpen, pResOut);
}
