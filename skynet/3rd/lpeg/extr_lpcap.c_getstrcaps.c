
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int s; } ;
struct TYPE_14__ {TYPE_6__* cap; } ;
struct TYPE_11__ {int e; int s; } ;
struct TYPE_12__ {TYPE_1__ s; TYPE_6__* cp; } ;
struct TYPE_13__ {int isstring; TYPE_2__ u; } ;
typedef TYPE_3__ StrAux ;
typedef TYPE_4__ CapState ;


 scalar_t__ Csimple ;
 int MAXSTRCAPS ;
 scalar_t__ captype (TYPE_6__*) ;
 int closeaddr (TYPE_6__*) ;
 int isclosecap (TYPE_6__*) ;
 int isfullcap (int ) ;
 int nextcap (TYPE_4__*) ;

__attribute__((used)) static int getstrcaps (CapState *cs, StrAux *cps, int n) {
  int k = n++;
  cps[k].isstring = 1;
  cps[k].u.s.s = cs->cap->s;
  if (!isfullcap(cs->cap++)) {
    while (!isclosecap(cs->cap)) {
      if (n >= MAXSTRCAPS)
        nextcap(cs);
      else if (captype(cs->cap) == Csimple)
        n = getstrcaps(cs, cps, n);
      else {
        cps[n].isstring = 0;
        cps[n].u.cp = cs->cap;
        nextcap(cs);
        n++;
      }
    }
    cs->cap++;
  }
  cps[k].u.s.e = closeaddr(cs->cap - 1);
  return n;
}
