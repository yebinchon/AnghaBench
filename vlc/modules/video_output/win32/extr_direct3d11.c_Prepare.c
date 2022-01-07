
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {TYPE_5__* sys; } ;
typedef TYPE_4__ vout_display_t ;
struct TYPE_18__ {int outside_opaque; scalar_t__ (* startEndRenderingCb ) (int ,int,TYPE_7__*) ;} ;
typedef TYPE_5__ vout_display_sys_t ;
typedef int vlc_tick_t ;
typedef int subpicture_t ;
struct TYPE_15__ {scalar_t__ max_luminance; int min_luminance; int * white_point; int * primaries; } ;
struct TYPE_14__ {int MaxFALL; int MaxCLL; } ;
struct TYPE_16__ {TYPE_2__ mastering; TYPE_1__ lighting; } ;
struct TYPE_19__ {TYPE_3__ format; } ;
typedef TYPE_6__ picture_t ;
struct TYPE_20__ {int MaxFrameAverageLightLevel; int MaxContentLightLevel; scalar_t__ MaxMasteringLuminance; int MinMasteringLuminance; int * WhitePoint; int * RedPrimary; int * BluePrimary; int * GreenPrimary; } ;
typedef TYPE_7__ libvlc_video_direct3d_hdr10_metadata_t ;


 int PreparePicture (TYPE_4__*,TYPE_6__*,int *) ;
 int VLC_UNUSED (int ) ;
 scalar_t__ stub1 (int ,int,TYPE_7__*) ;
 scalar_t__ stub2 (int ,int,TYPE_7__*) ;

__attribute__((used)) static void Prepare(vout_display_t *vd, picture_t *picture,
                    subpicture_t *subpicture, vlc_tick_t date)
{
    vout_display_sys_t *sys = vd->sys;

    VLC_UNUSED(date);

    libvlc_video_direct3d_hdr10_metadata_t hdr10;
    if (picture->format.mastering.max_luminance)
    {
        hdr10.GreenPrimary[0] = picture->format.mastering.primaries[0];
        hdr10.GreenPrimary[1] = picture->format.mastering.primaries[1];
        hdr10.BluePrimary[0] = picture->format.mastering.primaries[2];
        hdr10.BluePrimary[1] = picture->format.mastering.primaries[3];
        hdr10.RedPrimary[0] = picture->format.mastering.primaries[4];
        hdr10.RedPrimary[1] = picture->format.mastering.primaries[5];
        hdr10.WhitePoint[0] = picture->format.mastering.white_point[0];
        hdr10.WhitePoint[1] = picture->format.mastering.white_point[1];
        hdr10.MinMasteringLuminance = picture->format.mastering.min_luminance;
        hdr10.MaxMasteringLuminance = picture->format.mastering.max_luminance;
        hdr10.MaxContentLightLevel = picture->format.lighting.MaxCLL;
        hdr10.MaxFrameAverageLightLevel = picture->format.lighting.MaxFALL;
    }

    if ( sys->startEndRenderingCb( sys->outside_opaque, 1,
                                   picture->format.mastering.max_luminance ? &hdr10 : ((void*)0)))
    {
        PreparePicture(vd, picture, subpicture);

        sys->startEndRenderingCb( sys->outside_opaque, 0, ((void*)0) );
    }
}
