
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pAinc; } ;
typedef TYPE_1__ Parse ;


 int autoIncrementEnd (TYPE_1__*) ;

void sqlite3AutoincrementEnd(Parse *pParse){
  if( pParse->pAinc ) autoIncrementEnd(pParse);
}
