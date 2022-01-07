
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pVdbe; } ;
typedef TYPE_1__ Parse ;


 int sqlite3VdbeResolveLabel (int ,int) ;

void sqlite3ResolvePartIdxLabel(Parse *pParse, int iLabel){
  if( iLabel ){
    sqlite3VdbeResolveLabel(pParse->pVdbe, iLabel);
  }
}
