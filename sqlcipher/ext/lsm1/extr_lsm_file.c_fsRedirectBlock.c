
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int n; TYPE_1__* a; } ;
struct TYPE_4__ {int iFrom; int iTo; } ;
typedef TYPE_2__ Redirect ;


 int assert (int) ;

__attribute__((used)) static int fsRedirectBlock(Redirect *p, int iBlk){
  if( p ){
    int i;
    for(i=0; i<p->n; i++){
      if( iBlk==p->a[i].iFrom ) return p->a[i].iTo;
    }
  }
  assert( iBlk!=0 );
  return iBlk;
}
