
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int isMultiWrite; int writeMask; } ;
typedef TYPE_1__ Parse ;


 int DbMaskSet (int ,int) ;
 int sqlite3CodeVerifySchema (TYPE_1__*,int) ;
 TYPE_1__* sqlite3ParseToplevel (TYPE_1__*) ;

void sqlite3BeginWriteOperation(Parse *pParse, int setStatement, int iDb){
  Parse *pToplevel = sqlite3ParseToplevel(pParse);
  sqlite3CodeVerifySchema(pParse, iDb);
  DbMaskSet(pToplevel->writeMask, iDb);
  pToplevel->isMultiWrite |= setStatement;
}
