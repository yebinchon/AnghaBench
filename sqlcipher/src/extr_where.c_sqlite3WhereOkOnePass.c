
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ eOnePass; int aiCurOnePass; } ;
typedef TYPE_1__ WhereInfo ;


 scalar_t__ ONEPASS_OFF ;
 scalar_t__ ONEPASS_SINGLE ;
 int memcpy (int*,int ,int) ;
 int sqlite3DebugPrintf (char*,char*,int,int) ;
 scalar_t__ sqlite3WhereTrace ;

int sqlite3WhereOkOnePass(WhereInfo *pWInfo, int *aiCur){
  memcpy(aiCur, pWInfo->aiCurOnePass, sizeof(int)*2);







  return pWInfo->eOnePass;
}
