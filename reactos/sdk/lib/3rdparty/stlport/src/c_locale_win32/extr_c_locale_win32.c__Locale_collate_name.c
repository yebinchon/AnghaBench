
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
struct TYPE_5__ {int cp; TYPE_1__ lc; } ;
typedef TYPE_2__ _Locale_collate_t ;


 char const* __GetLocaleName (int ,int ,char*) ;

char const* _Locale_collate_name(const _Locale_collate_t* lcol, char* buf)
{ return __GetLocaleName(lcol->lc.id, lcol->cp, buf); }
