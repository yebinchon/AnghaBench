
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int idx; int rootData; int leafReader; int * pStmt; } ;
typedef TYPE_1__ LeavesReader ;


 int SCRAMBLE (TYPE_1__*) ;
 int dataBufferDestroy (int *) ;
 int leafReaderDestroy (int *) ;
 int sqlite3_finalize (int *) ;

__attribute__((used)) static void leavesReaderDestroy(LeavesReader *pReader){



  if( pReader->pStmt!=((void*)0) && pReader->idx==-1 ){
    sqlite3_finalize(pReader->pStmt);
  }
  leafReaderDestroy(&pReader->leafReader);
  dataBufferDestroy(&pReader->rootData);
  SCRAMBLE(pReader);
}
