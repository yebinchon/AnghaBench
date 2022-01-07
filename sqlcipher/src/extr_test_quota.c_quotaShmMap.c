
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_7__ {int (* xShmMap ) (TYPE_2__*,int,int,int,void volatile**) ;} ;


 TYPE_2__* quotaSubOpen (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int,int,int,void volatile**) ;

__attribute__((used)) static int quotaShmMap(
  sqlite3_file *pConn,
  int iRegion,
  int szRegion,
  int bExtend,
  void volatile **pp
){
  sqlite3_file *pSubOpen = quotaSubOpen(pConn);
  return pSubOpen->pMethods->xShmMap(pSubOpen, iRegion, szRegion, bExtend, pp);
}
