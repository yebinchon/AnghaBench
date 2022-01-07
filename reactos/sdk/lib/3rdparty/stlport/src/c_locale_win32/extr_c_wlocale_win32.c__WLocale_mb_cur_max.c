
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_char_size; } ;
typedef TYPE_1__ _Locale_codecvt_t ;



int _WLocale_mb_cur_max (_Locale_codecvt_t * lcodecvt)
{ return lcodecvt->max_char_size; }
