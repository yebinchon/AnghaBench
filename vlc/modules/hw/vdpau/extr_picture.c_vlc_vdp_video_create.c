
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int copy; int destroy; } ;
struct TYPE_8__ {float sharpen; int device; int vdp; int surface; int refs; int procamp; int structure; struct TYPE_8__* frame; TYPE_1__ context; } ;
typedef TYPE_2__ vlc_vdp_video_frame_t ;
typedef TYPE_2__ vlc_vdp_video_field_t ;
typedef int vdp_t ;
typedef int VdpVideoSurface ;


 int VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME ;
 int VideoSurfaceCopy ;
 int VideoSurfaceDestroy ;
 int atomic_init (int *,int) ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int procamp_default ;
 scalar_t__ unlikely (int) ;
 int vdp_hold_x11 (int *,int *) ;

vlc_vdp_video_field_t *vlc_vdp_video_create(vdp_t *vdp,
                                            VdpVideoSurface surface)
{
    vlc_vdp_video_field_t *field = malloc(sizeof (*field));
    vlc_vdp_video_frame_t *frame = malloc(sizeof (*frame));

    if (unlikely(field == ((void*)0) || frame == ((void*)0)))
    {
        free(frame);
        free(field);
        return ((void*)0);
    }

    field->context.destroy = VideoSurfaceDestroy;
    field->context.copy = VideoSurfaceCopy;
    field->frame = frame;
    field->structure = VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME;
    field->procamp = procamp_default;
    field->sharpen = 0.f;

    atomic_init(&frame->refs, 1);
    frame->surface = surface;
    frame->vdp = vdp_hold_x11(vdp, &frame->device);
    return field;
}
