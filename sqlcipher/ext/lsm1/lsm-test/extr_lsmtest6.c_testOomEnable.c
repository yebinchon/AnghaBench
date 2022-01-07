
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bEnable; int pEnv; } ;
typedef TYPE_1__ OomTest ;


 int testMallocOomEnable (int ,int) ;

__attribute__((used)) static void testOomEnable(OomTest *p, int bEnable){
  p->bEnable = bEnable;
  testMallocOomEnable(p->pEnv, bEnable);
}
