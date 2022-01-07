
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int isMultiWrite; } ;
typedef TYPE_1__ Parse ;


 TYPE_1__* sqlite3ParseToplevel (TYPE_1__*) ;

void sqlite3MultiWrite(Parse *pParse){
  Parse *pToplevel = sqlite3ParseToplevel(pParse);
  pToplevel->isMultiWrite = 1;
}
