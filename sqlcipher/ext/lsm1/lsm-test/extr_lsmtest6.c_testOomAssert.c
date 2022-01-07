
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rc; } ;
typedef TYPE_1__ OomTest ;


 int test_failed () ;

__attribute__((used)) static void testOomAssert(OomTest *p, int bVal){
  if( bVal==0 ){
    test_failed();
    p->rc = 1;
  }
}
