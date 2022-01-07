
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int mangled; int vtable; } ;
typedef TYPE_1__ type_info ;


 char const* wine_dbg_sprintf (char*,int ,int ,char*) ;

__attribute__((used)) static inline const char* dbgstr_type_info(const type_info* info)
{
    if (!info) return "{}";
    return wine_dbg_sprintf("{vtable=%p name=%s (%s)}",
                            info->vtable, info->mangled, info->name ? info->name : "");
}
