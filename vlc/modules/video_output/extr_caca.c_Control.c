
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_6__ {int * dither; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int va_list ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;





 int cucul_free_dither (int *) ;
 int msg_Err (TYPE_1__*,char*) ;

__attribute__((used)) static int Control(vout_display_t *vd, int query, va_list args)
{
    vout_display_sys_t *sys = vd->sys;

    (void) args;

    switch (query) {
    case 129:
        if (sys->dither)
            cucul_free_dither(sys->dither);
        sys->dither = ((void*)0);

    case 131:
    case 128:
    case 132:
    case 130:
        return VLC_SUCCESS;

    default:
        msg_Err(vd, "Unsupported query in vout display caca");
        return VLC_EGENERIC;
    }
}
