
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nRef; } ;
typedef TYPE_1__ BtDb ;


 int assert (int) ;
 int testFree (TYPE_1__*) ;

__attribute__((used)) static void btDeref(BtDb *p){
  p->nRef--;
  assert( p->nRef>=0 );
  if( p->nRef<=0 ) testFree(p);
}
