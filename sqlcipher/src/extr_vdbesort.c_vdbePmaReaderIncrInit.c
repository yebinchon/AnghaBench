
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bUseThread; int pTask; } ;
struct TYPE_5__ {TYPE_2__* pIncr; } ;
typedef TYPE_1__ PmaReader ;
typedef TYPE_2__ IncrMerger ;


 int INCRINIT_TASK ;
 int SQLITE_OK ;
 int assert (int) ;
 int vdbePmaReaderBgIncrInit ;
 int vdbePmaReaderIncrMergeInit (TYPE_1__*,int) ;
 int vdbeSorterCreateThread (int ,int ,void*) ;

__attribute__((used)) static int vdbePmaReaderIncrInit(PmaReader *pReadr, int eMode){
  IncrMerger *pIncr = pReadr->pIncr;
  int rc = SQLITE_OK;
  if( pIncr ){







    {
      rc = vdbePmaReaderIncrMergeInit(pReadr, eMode);
    }
  }
  return rc;
}
