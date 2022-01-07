
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rc; int iNext; scalar_t__ nFail; int pEnv; } ;
typedef TYPE_1__ OomTest ;


 int testMallocOom (int ,int,int ,void (*) (void*),void*) ;
 scalar_t__ xOomHook ;

__attribute__((used)) static int testOomContinue(OomTest *p){
  if( p->rc!=0 || (p->iNext>1 && p->nFail==0) ){
    return 0;
  }
  p->nFail = 0;
  testMallocOom(p->pEnv, p->iNext, 0, (void (*)(void*))xOomHook, (void *)p);
  return 1;
}
