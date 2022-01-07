
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int _Locale_lcid_t ;
struct TYPE_6__ {int id; } ;
struct TYPE_7__ {TYPE_1__ lc; int cp; } ;
typedef TYPE_2__ _Locale_collate_t ;


 int INVARIANT_LCID ;
 int _STLP_LOC_NO_MEMORY ;
 int _STLP_LOC_UNKNOWN_NAME ;
 int __GetLCIDFromName (char const*,int*,int ,int *) ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;

_Locale_collate_t* _Locale_collate_create(const char * name, _Locale_lcid_t* lc_hint, int *__err_code) {
  _Locale_collate_t *lcol = (_Locale_collate_t*)malloc(sizeof(_Locale_collate_t));
  if (!lcol) { *__err_code = _STLP_LOC_NO_MEMORY; return lcol; }
  memset(lcol, 0, sizeof(_Locale_collate_t));

  if (__GetLCIDFromName(name, &lcol->lc.id, lcol->cp, lc_hint) == -1)
  { free(lcol); *__err_code = _STLP_LOC_UNKNOWN_NAME; return ((void*)0); }






  return lcol;
}
