
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ size; int info; int name; scalar_t__ sib; } ;
typedef int GCstr ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef scalar_t__ CTSize ;
typedef scalar_t__ CTInfo ;


 scalar_t__ CTA_QUAL ;
 int CTA_SUBTYPE ;
 scalar_t__ ctype_attrib (int ) ;
 TYPE_1__* ctype_child (int *,TYPE_1__*) ;
 TYPE_1__* ctype_get (int *,scalar_t__) ;
 scalar_t__ ctype_isattrib (int ) ;
 scalar_t__ ctype_isxattrib (int ,int ) ;
 scalar_t__ gcref (int ) ;
 scalar_t__ obj2gco (int *) ;

CType *lj_ctype_getfieldq(CTState *cts, CType *ct, GCstr *name, CTSize *ofs,
     CTInfo *qual)
{
  while (ct->sib) {
    ct = ctype_get(cts, ct->sib);
    if (gcref(ct->name) == obj2gco(name)) {
      *ofs = ct->size;
      return ct;
    }
    if (ctype_isxattrib(ct->info, CTA_SUBTYPE)) {
      CType *fct, *cct = ctype_child(cts, ct);
      CTInfo q = 0;
      while (ctype_isattrib(cct->info)) {
 if (ctype_attrib(cct->info) == CTA_QUAL) q |= cct->size;
 cct = ctype_child(cts, cct);
      }
      fct = lj_ctype_getfieldq(cts, cct, name, ofs, qual);
      if (fct) {
 if (qual) *qual |= q;
 *ofs += ct->size;
 return fct;
      }
    }
  }
  return ((void*)0);
}
