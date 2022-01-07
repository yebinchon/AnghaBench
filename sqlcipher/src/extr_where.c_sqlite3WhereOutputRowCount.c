
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nRowOut; } ;
typedef TYPE_1__ WhereInfo ;
typedef int LogEst ;



LogEst sqlite3WhereOutputRowCount(WhereInfo *pWInfo){
  return pWInfo->nRowOut;
}
