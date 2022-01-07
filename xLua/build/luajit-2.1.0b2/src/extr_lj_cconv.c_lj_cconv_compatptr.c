
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int info; scalar_t__ size; } ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef int CTInfo ;


 int CCF_CAST ;
 int CCF_IGNQUAL ;
 int CCF_SAME ;
 int CTF_BOOL ;
 int CTF_FP ;
 TYPE_1__* cconv_childqual (int *,TYPE_1__*,int*) ;
 scalar_t__ ctype_isfunc (int) ;
 scalar_t__ ctype_isnum (int) ;
 scalar_t__ ctype_ispointer (int) ;
 scalar_t__ ctype_isstruct (int) ;
 scalar_t__ ctype_isvoid (int) ;
 scalar_t__ ctype_type (int) ;

int lj_cconv_compatptr(CTState *cts, CType *d, CType *s, CTInfo flags)
{
  if (!((flags & CCF_CAST) || d == s)) {
    CTInfo dqual = 0, squal = 0;
    d = cconv_childqual(cts, d, &dqual);
    if (!ctype_isstruct(s->info))
      s = cconv_childqual(cts, s, &squal);
    if ((flags & CCF_SAME)) {
      if (dqual != squal)
 return 0;
    } else if (!(flags & CCF_IGNQUAL)) {
      if ((dqual & squal) != squal)
 return 0;
      if (ctype_isvoid(d->info) || ctype_isvoid(s->info))
 return 1;
    }
    if (ctype_type(d->info) != ctype_type(s->info) ||
 d->size != s->size)
      return 0;
    if (ctype_isnum(d->info)) {
      if (((d->info ^ s->info) & (CTF_BOOL|CTF_FP)))
 return 0;
    } else if (ctype_ispointer(d->info)) {

      return lj_cconv_compatptr(cts, d, s, flags|CCF_SAME);
    } else if (ctype_isstruct(d->info)) {
      if (d != s)
 return 0;
    } else if (ctype_isfunc(d->info)) {

    }
  }
  return 1;
}
