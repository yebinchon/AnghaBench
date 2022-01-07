
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bEnable; } ;
typedef TYPE_1__ OomTest ;


 int LSM_NOMEM ;
 int LSM_OK ;
 int testOomAssert (TYPE_1__*,int) ;
 int testOomHit (TYPE_1__*) ;

__attribute__((used)) static void testOomAssertRc(OomTest *p, int rc){
  testOomAssert(p, rc==LSM_OK || rc==LSM_NOMEM);
  testOomAssert(p, testOomHit(p)==(rc==LSM_NOMEM) || p->bEnable==0 );
}
