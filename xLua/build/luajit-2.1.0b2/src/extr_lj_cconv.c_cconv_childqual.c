
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int info; int size; } ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef int CTInfo ;


 scalar_t__ CTA_QUAL ;
 int CTF_QUAL ;
 scalar_t__ ctype_attrib (int) ;
 TYPE_1__* ctype_child (int *,TYPE_1__*) ;
 scalar_t__ ctype_isattrib (int) ;
 int ctype_isenum (int) ;

__attribute__((used)) static CType *cconv_childqual(CTState *cts, CType *ct, CTInfo *qual)
{
  ct = ctype_child(cts, ct);
  for (;;) {
    if (ctype_isattrib(ct->info)) {
      if (ctype_attrib(ct->info) == CTA_QUAL) *qual |= ct->size;
    } else if (!ctype_isenum(ct->info)) {
      break;
    }
    ct = ctype_child(cts, ct);
  }
  *qual |= (ct->info & CTF_QUAL);
  return ct;
}
