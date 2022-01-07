
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32_t ;
typedef int cTValue ;
struct TYPE_9__ {int strempty; } ;
struct TYPE_8__ {TYPE_3__* g; int miscmap; } ;
struct TYPE_7__ {int info; } ;
typedef int MMS ;
typedef scalar_t__ CTypeID ;
typedef TYPE_1__ CType ;
typedef TYPE_2__ CTState ;


 scalar_t__ ctype_cid (int ) ;
 TYPE_1__* ctype_get (TYPE_2__*,scalar_t__) ;
 scalar_t__ ctype_isattrib (int ) ;
 scalar_t__ ctype_isfunc (int ) ;
 scalar_t__ ctype_isptr (int ) ;
 scalar_t__ ctype_isref (int ) ;
 int * lj_tab_getinth (int ,int ) ;
 int * lj_tab_getstr (int ,int *) ;
 int * mmname_str (TYPE_3__*,int ) ;
 int tabV (int *) ;
 int tvisnil (int *) ;
 scalar_t__ tvistab (int *) ;

cTValue *lj_ctype_meta(CTState *cts, CTypeID id, MMS mm)
{
  CType *ct = ctype_get(cts, id);
  cTValue *tv;
  while (ctype_isattrib(ct->info) || ctype_isref(ct->info)) {
    id = ctype_cid(ct->info);
    ct = ctype_get(cts, id);
  }
  if (ctype_isptr(ct->info) &&
      ctype_isfunc(ctype_get(cts, ctype_cid(ct->info))->info))
    tv = lj_tab_getstr(cts->miscmap, &cts->g->strempty);
  else
    tv = lj_tab_getinth(cts->miscmap, -(int32_t)id);
  if (tv && tvistab(tv) &&
      (tv = lj_tab_getstr(tabV(tv), mmname_str(cts->g, mm))) && !tvisnil(tv))
    return tv;
  return ((void*)0);
}
