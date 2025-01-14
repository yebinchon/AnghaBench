
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct TYPE_16__ {scalar_t__ haskids; } ;
struct TYPE_15__ {scalar_t__ p; scalar_t__ ep; } ;
struct TYPE_12__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_14__ {TYPE_1__ info; } ;
struct TYPE_13__ {scalar_t__ depth; int allunits; scalar_t__ nextunit; scalar_t__ uoff; scalar_t__ unit; TYPE_5__ attrs; TYPE_4__ b; int aoff; } ;
typedef TYPE_2__ DwarfSym ;
typedef int DwarfAbbrev ;
typedef TYPE_3__ Dwarf ;


 scalar_t__ dwarfenumunit (TYPE_3__*,scalar_t__,TYPE_2__*) ;
 scalar_t__ dwarfget128 (TYPE_4__*) ;
 int * dwarfgetabbrev (TYPE_3__*,int ,scalar_t__) ;
 int * nil ;
 scalar_t__ parseattrs (TYPE_4__*,scalar_t__,int *,TYPE_5__*) ;
 int werrstr (char*,int ,scalar_t__,scalar_t__,scalar_t__) ;

int
dwarfnextsym(Dwarf *d, DwarfSym *s)
{
 ulong num;
 DwarfAbbrev *a;

 if(s->attrs.haskids)
  s->depth++;
top:
 if(s->b.p >= s->b.ep){
  if(s->allunits && s->nextunit < d->info.len){
   if(dwarfenumunit(d, s->nextunit, s) < 0) {
    return -1;
   }
   s->allunits = 1;
   goto top;
  }
  return 0;
 }

 s->uoff = s->b.p - (d->info.data+s->unit);
 num = dwarfget128(&s->b);
 if(num == 0){
  if(s->depth == 0) {
   return 0;
  }
  if(s->depth > 0)
   s->depth--;
  goto top;
 }

 a = dwarfgetabbrev(d, s->aoff, num);
 if(a == nil){
  werrstr("getabbrev %ud %ud for %ud,%ud: %r\n", s->aoff, num, s->unit, s->uoff);
  return -1;
 }
 if(parseattrs(&s->b, s->unit, a, &s->attrs) < 0) {
  return -1;
 }
 return 1;
}
