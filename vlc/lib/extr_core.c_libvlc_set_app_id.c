
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libvlc_int_t ;
struct TYPE_3__ {int * p_libvlc_int; } ;
typedef TYPE_1__ libvlc_instance_t ;


 int var_SetString (int *,char*,char const*) ;

void libvlc_set_app_id(libvlc_instance_t *p_i, const char *id,
                       const char *version, const char *icon)
{
    libvlc_int_t *p_libvlc = p_i->p_libvlc_int;

    var_SetString(p_libvlc, "app-id", id ? id : "");
    var_SetString(p_libvlc, "app-version", version ? version : "");
    var_SetString(p_libvlc, "app-icon-name", icon ? icon : "");
}
