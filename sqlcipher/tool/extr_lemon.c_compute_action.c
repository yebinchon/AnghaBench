
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lemon {int minReduce; int minShiftReduce; int errAction; int accAction; int nterminal; } ;
struct TYPE_8__ {TYPE_3__* rp; TYPE_1__* stp; } ;
struct action {int type; TYPE_4__ x; TYPE_2__* sp; } ;
struct TYPE_7__ {int iRule; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {int statenum; } ;
int compute_action(struct lemon *lemp, struct action *ap)
{
  int act;
  switch( ap->type ){
    case 129: act = ap->x.stp->statenum; break;
    case 128: {



      if( ap->sp->index>=lemp->nterminal ){
        act = lemp->minReduce + ap->x.rp->iRule;
      }else{
        act = lemp->minShiftReduce + ap->x.rp->iRule;
      }
      break;
    }
    case 130: act = lemp->minReduce + ap->x.rp->iRule; break;
    case 131: act = lemp->errAction; break;
    case 132: act = lemp->accAction; break;
    default: act = -1; break;
  }
  return act;
}
