
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_10__ {TYPE_4__* mouse_opaque; int mouse_event; int * fmt; int clock; int * vout; } ;
typedef TYPE_3__ vout_configuration_t ;
typedef int vlc_video_context ;
struct decoder_owner {int vout_thread_started; int p_resource; int p_clock; int * out_pool; int * vctx; } ;
typedef enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;
struct TYPE_9__ {int video; } ;
struct TYPE_8__ {int i_codec; } ;
struct TYPE_11__ {TYPE_2__ fmt_out; scalar_t__ i_extra_picture_buffers; TYPE_1__ fmt_in; } ;
typedef TYPE_4__ decoder_t ;


 int CreateVoutIfNeeded (struct decoder_owner*,int **,int*,int *) ;
 int MouseEvent ;
 struct decoder_owner* dec_get_owner (TYPE_4__*) ;
 int decoder_Notify (struct decoder_owner*,int ,int *,int) ;
 int input_resource_StartVout (int ,int *,TYPE_3__*) ;
 int on_vout_started ;
 int * picture_pool_NewFromFormat (int *,scalar_t__) ;
 int * vlc_video_context_Hold (int *) ;
 int vlc_video_context_Release (int *) ;
 int vout_ChangeSource (int *,int *) ;

__attribute__((used)) static int ModuleThread_UpdateVideoFormat( decoder_t *p_dec, vlc_video_context *vctx )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    enum vlc_vout_order vout_order;
    vout_thread_t *p_vout = ((void*)0);
    int created_vout = CreateVoutIfNeeded(p_owner, &p_vout, &vout_order, ((void*)0));
    if (created_vout == -1)
        return -1;
    if (created_vout == 0)
    {

        if (vctx != ((void*)0) && p_owner->vctx == vctx)
            return 0;
    }
    if (p_owner->vctx)
        vlc_video_context_Release(p_owner->vctx);
    p_owner->vctx = vctx ? vlc_video_context_Hold(vctx) : ((void*)0);



    if ( p_owner->out_pool == ((void*)0) )
    {
        unsigned dpb_size;
        switch( p_dec->fmt_in.i_codec )
        {
        case 132:
        case 133:
        case 134:
            dpb_size = 18;
            break;
        case 135:
            dpb_size = 10;
            break;
        case 131:
        case 130:
        case 129:
        case 128:
            dpb_size = 3;
            break;
        default:
            dpb_size = 2;
            break;
        }

        p_owner->out_pool = picture_pool_NewFromFormat( &p_dec->fmt_out.video,
                            dpb_size + p_dec->i_extra_picture_buffers + 1 );
        if (p_owner->out_pool == ((void*)0))
            return -1;
    }
    int res;
    if (p_owner->vout_thread_started)
    {
        res = vout_ChangeSource(p_vout, &p_dec->fmt_out.video);
        if (res == 0)

            return 0;
    }

    vout_configuration_t cfg = {
        .vout = p_vout, .clock = p_owner->p_clock, .fmt = &p_dec->fmt_out.video,
        .mouse_event = MouseEvent, .mouse_opaque = p_dec,
    };
    res = input_resource_StartVout( p_owner->p_resource, vctx, &cfg);
    if (res == 0)
    {
        p_owner->vout_thread_started = 1;
        decoder_Notify(p_owner, on_vout_started, p_vout, vout_order);
    }
    return res;
}
