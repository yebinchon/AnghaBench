
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addrExplain; } ;
typedef TYPE_1__ Parse ;


 int sqlite3ExplainBreakpoint (char*,int ) ;
 int sqlite3VdbeExplainParent (TYPE_1__*) ;

void sqlite3VdbeExplainPop(Parse *pParse){
  sqlite3ExplainBreakpoint("POP", 0);
  pParse->addrExplain = sqlite3VdbeExplainParent(pParse);
}
