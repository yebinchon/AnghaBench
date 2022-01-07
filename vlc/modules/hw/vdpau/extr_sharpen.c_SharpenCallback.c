
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int f_float; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
typedef int uint32_t ;
struct TYPE_6__ {int sigma; } ;
typedef TYPE_2__ filter_sys_t ;


 int VLC_SUCCESS ;
 int atomic_store (int *,int ) ;
 float vlc_to_vdp_sigma (int ) ;

__attribute__((used)) static int SharpenCallback(vlc_object_t *obj, const char *varname,
                           vlc_value_t prev, vlc_value_t cur, void *data)
{
    filter_sys_t *sys = data;
    union { uint32_t u; float f; } u;

    u.f = vlc_to_vdp_sigma(cur.f_float);
    atomic_store(&sys->sigma, u.u);
    (void) obj; (void) varname; (void) prev;
    return VLC_SUCCESS;
}
