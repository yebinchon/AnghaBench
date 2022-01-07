
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_14__ {TYPE_2__ info; } ;
struct TYPE_11__ {scalar_t__ p; } ;
struct TYPE_13__ {TYPE_1__ b; } ;
typedef TYPE_3__ DwarfSym ;
typedef TYPE_4__ Dwarf ;


 scalar_t__ dwarfenumunit (TYPE_4__*,scalar_t__,TYPE_3__*) ;
 int dwarfnextsymat (TYPE_4__*,TYPE_3__*,int ) ;

int
dwarfseeksym(Dwarf *d, ulong unit, ulong off, DwarfSym *s)
{
 if(dwarfenumunit(d, unit, s) < 0)
  return -1;
 s->b.p = d->info.data + unit + off;
 if(dwarfnextsymat(d, s, 0) != 1)
  return -1;
 return 0;
}
