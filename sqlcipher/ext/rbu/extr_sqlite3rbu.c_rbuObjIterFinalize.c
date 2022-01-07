
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pIdxIter; int pTblIter; } ;
typedef TYPE_1__ RbuObjIter ;


 int memset (TYPE_1__*,int ,int) ;
 int rbuObjIterClearStatements (TYPE_1__*) ;
 int rbuObjIterFreeCols (TYPE_1__*) ;
 int sqlite3_finalize (int ) ;

__attribute__((used)) static void rbuObjIterFinalize(RbuObjIter *pIter){
  rbuObjIterClearStatements(pIter);
  sqlite3_finalize(pIter->pTblIter);
  sqlite3_finalize(pIter->pIdxIter);
  rbuObjIterFreeCols(pIter);
  memset(pIter, 0, sizeof(RbuObjIter));
}
