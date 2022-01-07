
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int _Locale_lcid_t ;
struct TYPE_3__ {int lc; } ;
typedef TYPE_1__ _Locale_ctype_t ;



_Locale_lcid_t* _Locale_get_ctype_hint(_Locale_ctype_t* ltype)
{ return (ltype != 0) ? &ltype->lc : 0; }
