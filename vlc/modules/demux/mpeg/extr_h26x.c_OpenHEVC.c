
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ hevc_probe_ctx_t ;
typedef int demux_t ;


 int GenericOpen (int *,char*,int ,int ,TYPE_1__*,char const**,char const**) ;
 int ProbeHEVC ;
 int VLC_CODEC_HEVC ;

__attribute__((used)) static int OpenHEVC( vlc_object_t * p_this )
{
    hevc_probe_ctx_t ctx = { 0, 0, 0 };
    const char *rgi_psz_ext[] = { ".h265", ".265", ".hevc", ".bin", ".bit", ".raw", ((void*)0) };
    const char *rgi_psz_mime[] = { "video/h265", "video/hevc", "video/HEVC", ((void*)0) };

    return GenericOpen( (demux_t*)p_this, "hevc", VLC_CODEC_HEVC, ProbeHEVC,
                        &ctx, rgi_psz_ext, rgi_psz_mime );
}
