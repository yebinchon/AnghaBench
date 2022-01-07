
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iNext; int bEnable; int nFail; int pEnv; } ;
typedef TYPE_1__ OomTest ;


 int memset (TYPE_1__*,int ,int) ;
 int tdb_lsm_env () ;

__attribute__((used)) static void testOomStart(OomTest *p){
  memset(p, 0, sizeof(OomTest));
  p->iNext = 1;
  p->bEnable = 1;
  p->nFail = 1;
  p->pEnv = tdb_lsm_env();
}
