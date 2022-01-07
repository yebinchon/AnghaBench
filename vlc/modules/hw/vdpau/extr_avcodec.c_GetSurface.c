
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* frame; } ;
typedef TYPE_2__ vlc_vdp_video_field_t ;
struct TYPE_10__ {int vctx; } ;
typedef TYPE_3__ vlc_va_sys_t ;
struct video_context_private {TYPE_2__** pool; } ;
struct TYPE_8__ {int refs; } ;


 struct video_context_private* GetVDPAUContextPrivate (int ) ;
 scalar_t__ atomic_compare_exchange_strong (int *,uintptr_t*,int) ;
 int atomic_fetch_sub (int *,int) ;
 TYPE_2__* vlc_vdp_video_copy (TYPE_2__*) ;

__attribute__((used)) static vlc_vdp_video_field_t *GetSurface(vlc_va_sys_t *sys)
{
    vlc_vdp_video_field_t *f;
    struct video_context_private *vctx_priv = GetVDPAUContextPrivate(sys->vctx);

    for (unsigned i = 0; (f = vctx_priv->pool[i]) != ((void*)0); i++)
    {
        uintptr_t expected = 1;

        if (atomic_compare_exchange_strong(&f->frame->refs, &expected, 2))
        {
            vlc_vdp_video_field_t *field = vlc_vdp_video_copy(f);
            atomic_fetch_sub(&f->frame->refs, 1);
            return field;
        }
    }
    return ((void*)0);
}
