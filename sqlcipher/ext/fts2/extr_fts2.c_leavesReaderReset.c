
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pStmt; } ;
typedef TYPE_1__ LeavesReader ;


 int sqlite3_reset (int ) ;

__attribute__((used)) static int leavesReaderReset(LeavesReader *pReader){
  return sqlite3_reset(pReader->pStmt);
}
