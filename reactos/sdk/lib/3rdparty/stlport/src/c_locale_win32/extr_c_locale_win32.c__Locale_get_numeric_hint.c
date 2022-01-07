
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lc; } ;
typedef TYPE_1__ _Locale_numeric_t ;
typedef int _Locale_lcid_t ;



_Locale_lcid_t* _Locale_get_numeric_hint(_Locale_numeric_t* lnumeric)
{ return (lnumeric != 0) ? &lnumeric->lc : 0; }
