
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nData; int pOut; scalar_t__ iOff; scalar_t__ bLog; } ;
typedef TYPE_1__ InsertWriteHook ;


 int fflush (int ) ;
 int fprintf (int ,char*,char*,int,int) ;

__attribute__((used)) static void flushHook(InsertWriteHook *pHook){
  if( pHook->nData ){
    fprintf(pHook->pOut, "write %s %d %d\n",
        (pHook->bLog ? "log" : "db"), (int)pHook->iOff, pHook->nData
    );
    pHook->nData = 0;
    fflush(pHook->pOut);
  }
}
