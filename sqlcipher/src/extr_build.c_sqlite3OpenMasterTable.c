
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_5__ {int nTab; } ;
typedef TYPE_1__ Parse ;


 int MASTER_NAME ;
 int MASTER_ROOT ;
 int OP_OpenWrite ;
 int * sqlite3GetVdbe (TYPE_1__*) ;
 int sqlite3TableLock (TYPE_1__*,int,int ,int,int ) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int ,int ,int,int) ;

void sqlite3OpenMasterTable(Parse *p, int iDb){
  Vdbe *v = sqlite3GetVdbe(p);
  sqlite3TableLock(p, iDb, MASTER_ROOT, 1, MASTER_NAME);
  sqlite3VdbeAddOp4Int(v, OP_OpenWrite, 0, MASTER_ROOT, iDb, 5);
  if( p->nTab==0 ){
    p->nTab = 1;
  }
}
