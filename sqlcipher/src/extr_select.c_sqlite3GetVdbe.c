
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_4__ {scalar_t__ pToplevel; int okConstFactor; int db; int * pVdbe; } ;
typedef TYPE_1__ Parse ;


 scalar_t__ OptimizationEnabled (int ,int ) ;
 int SQLITE_FactorOutConst ;
 int * sqlite3VdbeCreate (TYPE_1__*) ;

Vdbe *sqlite3GetVdbe(Parse *pParse){
  if( pParse->pVdbe ){
    return pParse->pVdbe;
  }
  if( pParse->pToplevel==0
   && OptimizationEnabled(pParse->db,SQLITE_FactorOutConst)
  ){
    pParse->okConstFactor = 1;
  }
  return sqlite3VdbeCreate(pParse);
}
