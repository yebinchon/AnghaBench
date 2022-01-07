
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nSrc; TYPE_2__* a; } ;
struct TYPE_5__ {int jointype; } ;
struct TYPE_6__ {TYPE_1__ fg; } ;
typedef TYPE_3__ SrcList ;



void sqlite3SrcListShiftJoinType(SrcList *p){
  if( p ){
    int i;
    for(i=p->nSrc-1; i>0; i--){
      p->a[i].fg.jointype = p->a[i-1].fg.jointype;
    }
    p->a[0].fg.jointype = 0;
  }
}
