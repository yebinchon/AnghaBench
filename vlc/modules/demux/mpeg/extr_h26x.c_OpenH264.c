
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ h264_probe_ctx_t ;
typedef int demux_t ;


 int GenericOpen (int *,char*,int ,int ,TYPE_1__*,char const**,char const**) ;
 int ProbeH264 ;
 int VLC_CODEC_H264 ;

__attribute__((used)) static int OpenH264( vlc_object_t * p_this )
{
    h264_probe_ctx_t ctx = { 0, 0 };
    const char *rgi_psz_ext[] = { ".h264", ".264", ".bin", ".bit", ".raw", ((void*)0) };
    const char *rgi_psz_mime[] = { "video/H264", "video/h264", "video/avc", ((void*)0) };

    return GenericOpen( (demux_t*)p_this, "h264", VLC_CODEC_H264, ProbeH264,
                        &ctx, rgi_psz_ext, rgi_psz_mime );
}
