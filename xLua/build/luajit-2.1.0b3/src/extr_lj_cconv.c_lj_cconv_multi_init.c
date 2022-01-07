
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ctypeid; } ;
struct TYPE_5__ {int info; } ;
typedef int TValue ;
typedef TYPE_1__ CType ;
typedef int CTState ;


 TYPE_4__* cdataV (int *) ;
 scalar_t__ ctype_isrefarray (int ) ;
 scalar_t__ ctype_isstruct (int ) ;
 TYPE_1__* lj_ctype_rawref (int *,int ) ;
 scalar_t__ tviscdata (int *) ;
 scalar_t__ tvisstr (int *) ;
 scalar_t__ tvistab (int *) ;

int lj_cconv_multi_init(CTState *cts, CType *d, TValue *o)
{
  if (!(ctype_isrefarray(d->info) || ctype_isstruct(d->info)))
    return 0;
  if (tvistab(o) || (tvisstr(o) && !ctype_isstruct(d->info)))
    return 0;
  if (tviscdata(o) && lj_ctype_rawref(cts, cdataV(o)->ctypeid) == d)
    return 0;
  return 1;
}
