
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int info; int size; int name; scalar_t__ sib; } ;
typedef int TValue ;
typedef int MSize ;
typedef scalar_t__ CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTState ;


 int CTA_SUBTYPE ;
 int CTF_UNION ;
 TYPE_1__* ctype_get (int *,scalar_t__) ;
 scalar_t__ ctype_isbitfield (int) ;
 scalar_t__ ctype_isfield (int) ;
 scalar_t__ ctype_isxattrib (int,int ) ;
 TYPE_1__* ctype_rawchild (int *,TYPE_1__*) ;
 int gcref (int ) ;
 int lj_cconv_bf_tv (int *,TYPE_1__*,int *,int *) ;
 int lj_cconv_ct_tv (int *,TYPE_1__*,int *,int *,int ) ;

__attribute__((used)) static void cconv_substruct_init(CTState *cts, CType *d, uint8_t *dp,
     TValue *o, MSize len, MSize *ip)
{
  CTypeID id = d->sib;
  while (id) {
    CType *df = ctype_get(cts, id);
    id = df->sib;
    if (ctype_isfield(df->info) || ctype_isbitfield(df->info)) {
      MSize i = *ip;
      if (!gcref(df->name)) continue;
      if (i >= len) break;
      *ip = i + 1;
      if (ctype_isfield(df->info))
 lj_cconv_ct_tv(cts, ctype_rawchild(cts, df), dp+df->size, o + i, 0);
      else
 lj_cconv_bf_tv(cts, df, dp+df->size, o + i);
      if ((d->info & CTF_UNION)) break;
    } else if (ctype_isxattrib(df->info, CTA_SUBTYPE)) {
      cconv_substruct_init(cts, ctype_rawchild(cts, df),
      dp+df->size, o, len, ip);
      if ((d->info & CTF_UNION)) break;
    }
  }
}
