
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nRef; } ;
typedef TYPE_1__ RtreeNode ;


 int assert (int) ;

__attribute__((used)) static void nodeReference(RtreeNode *p){
  if( p ){
    assert( p->nRef>0 );
    p->nRef++;
  }
}
