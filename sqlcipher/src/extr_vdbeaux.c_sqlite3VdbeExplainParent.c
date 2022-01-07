
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p2; } ;
typedef TYPE_1__ VdbeOp ;
struct TYPE_6__ {scalar_t__ addrExplain; int pVdbe; } ;
typedef TYPE_2__ Parse ;


 TYPE_1__* sqlite3VdbeGetOp (int ,scalar_t__) ;

int sqlite3VdbeExplainParent(Parse *pParse){
  VdbeOp *pOp;
  if( pParse->addrExplain==0 ) return 0;
  pOp = sqlite3VdbeGetOp(pParse->pVdbe, pParse->addrExplain);
  return pOp->p2;
}
