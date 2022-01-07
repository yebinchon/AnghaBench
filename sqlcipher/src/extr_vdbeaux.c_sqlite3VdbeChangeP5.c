
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {int nOp; TYPE_2__* aOp; TYPE_1__* db; } ;
typedef TYPE_3__ Vdbe ;
struct TYPE_6__ {int p5; } ;
struct TYPE_5__ {scalar_t__ mallocFailed; } ;


 int assert (int) ;

void sqlite3VdbeChangeP5(Vdbe *p, u16 p5){
  assert( p->nOp>0 || p->db->mallocFailed );
  if( p->nOp>0 ) p->aOp[p->nOp-1].p5 = p5;
}
