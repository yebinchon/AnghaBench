
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct TYPE_13__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_16__ {TYPE_3__ info; } ;
struct TYPE_11__ {scalar_t__ sibling; } ;
struct TYPE_14__ {scalar_t__ sibling; scalar_t__ haskids; TYPE_1__ have; } ;
struct TYPE_12__ {scalar_t__ p; } ;
struct TYPE_15__ {int depth; TYPE_4__ attrs; TYPE_2__ b; } ;
typedef TYPE_5__ DwarfSym ;
typedef TYPE_6__ Dwarf ;


 int dwarfnextsym (TYPE_6__*,TYPE_5__*) ;

int
dwarfnextsymat(Dwarf *d, DwarfSym *s, int depth)
{
 int r;
 DwarfSym t;
 uint sib;

 if(s->depth == depth && s->attrs.have.sibling){
  sib = s->attrs.sibling;
  if(sib < d->info.len && d->info.data+sib >= s->b.p)
   s->b.p = d->info.data+sib;
  s->attrs.haskids = 0;
 }
 t = *s;
 for(;;){
  if((r = dwarfnextsym(d, &t)) != 1) {
   return r;
  }
  if(t.depth < depth){

   return 0;
  }
  *s = t;
  if(t.depth == depth) {
   return 1;
  }
 }
}
