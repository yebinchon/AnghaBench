
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nval; int ival; } ;
struct TYPE_6__ {int k; TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
typedef int TValue ;




 scalar_t__ hasjumps (TYPE_2__*) ;
 int setfltvalue (int *,int ) ;
 int setivalue (int *,int ) ;

__attribute__((used)) static int tonumeral(expdesc *e, TValue *v) {
  if (hasjumps(e))
    return 0;
  switch (e->k) {
    case 128:
      if (v) setivalue(v, e->u.ival);
      return 1;
    case 129:
      if (v) setfltvalue(v, e->u.nval);
      return 1;
    default: return 0;
  }
}
