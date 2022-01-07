
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int info; scalar_t__ sib; } ;
typedef int GCstr ;
typedef TYPE_1__ CType ;
typedef int CTState ;


 int CTA_REDIR ;
 TYPE_1__* ctype_get (int *,scalar_t__) ;
 scalar_t__ ctype_isxattrib (int ,int ) ;
 int * gco2str (int ) ;
 int gcref (int ) ;
 char const* strdata (int *) ;

__attribute__((used)) static const char *clib_extsym(CTState *cts, CType *ct, GCstr *name)
{
  if (ct->sib) {
    CType *ctf = ctype_get(cts, ct->sib);
    if (ctype_isxattrib(ctf->info, CTA_REDIR))
      return strdata(gco2str(gcref(ctf->name)));
  }
  return strdata(name);
}
