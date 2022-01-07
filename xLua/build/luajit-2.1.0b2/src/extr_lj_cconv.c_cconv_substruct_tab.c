
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int32_t ;
struct TYPE_8__ {int info; int size; int name; scalar_t__ sib; } ;
typedef int TValue ;
typedef int GCtab ;
typedef scalar_t__ CTypeID ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef int CTInfo ;


 int CTA_SUBTYPE ;
 int CTF_UNION ;
 TYPE_1__* ctype_get (int *,scalar_t__) ;
 scalar_t__ ctype_isbitfield (int) ;
 scalar_t__ ctype_isfield (int) ;
 scalar_t__ ctype_isxattrib (int,int ) ;
 TYPE_1__* ctype_rawchild (int *,TYPE_1__*) ;
 int gco2str (int ) ;
 int gcref (int ) ;
 int lj_cconv_bf_tv (int *,TYPE_1__*,int *,int *) ;
 int lj_cconv_ct_tv (int *,TYPE_1__*,int *,int *,int ) ;
 scalar_t__ lj_tab_getint (int *,scalar_t__) ;
 scalar_t__ lj_tab_getstr (int *,int ) ;
 scalar_t__ tvisnil (int *) ;

__attribute__((used)) static void cconv_substruct_tab(CTState *cts, CType *d, uint8_t *dp,
    GCtab *t, int32_t *ip, CTInfo flags)
{
  CTypeID id = d->sib;
  while (id) {
    CType *df = ctype_get(cts, id);
    id = df->sib;
    if (ctype_isfield(df->info) || ctype_isbitfield(df->info)) {
      TValue *tv;
      int32_t i = *ip, iz = i;
      if (!gcref(df->name)) continue;
      if (i >= 0) {
      retry:
 tv = (TValue *)lj_tab_getint(t, i);
 if (!tv || tvisnil(tv)) {
   if (i == 0) { i = 1; goto retry; }
   if (iz == 0) { *ip = i = -1; goto tryname; }
   break;
 }
 *ip = i + 1;
      } else {
      tryname:
 tv = (TValue *)lj_tab_getstr(t, gco2str(gcref(df->name)));
 if (!tv || tvisnil(tv)) continue;
      }
      if (ctype_isfield(df->info))
 lj_cconv_ct_tv(cts, ctype_rawchild(cts, df), dp+df->size, tv, flags);
      else
 lj_cconv_bf_tv(cts, df, dp+df->size, tv);
      if ((d->info & CTF_UNION)) break;
    } else if (ctype_isxattrib(df->info, CTA_SUBTYPE)) {
      cconv_substruct_tab(cts, ctype_rawchild(cts, df),
     dp+df->size, t, ip, flags);
    }
  }
}
