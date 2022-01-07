
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_index; int lock; int * p_dec; int b_vd_ref; int (* pf_release ) (int *,unsigned int,int) ;} ;
struct TYPE_6__ {TYPE_1__ hw; } ;
typedef TYPE_2__ picture_sys_t ;


 int assert (int) ;
 int free (TYPE_2__*) ;
 int stub1 (int *,unsigned int,int) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static inline void
AndroidOpaquePicture_DetachDecoder(picture_sys_t *p_picsys)
{
    vlc_mutex_lock(&p_picsys->hw.lock);
    if (p_picsys->hw.i_index >= 0)
    {
        assert(p_picsys->hw.pf_release && p_picsys->hw.p_dec);
        p_picsys->hw.pf_release(p_picsys->hw.p_dec,
                                     (unsigned int) p_picsys->hw.i_index,
                                     0);
        p_picsys->hw.i_index = -1;
    }
    p_picsys->hw.pf_release = ((void*)0);
    p_picsys->hw.p_dec = ((void*)0);

    if (!p_picsys->hw.b_vd_ref && !p_picsys->hw.p_dec)
    {
        vlc_mutex_unlock(&p_picsys->hw.lock);
        vlc_mutex_destroy(&p_picsys->hw.lock);
        free(p_picsys);
    }
    else
        vlc_mutex_unlock(&p_picsys->hw.lock);
}
