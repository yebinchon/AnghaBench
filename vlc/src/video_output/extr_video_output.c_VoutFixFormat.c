
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int i_chroma; } ;
typedef TYPE_1__ video_format_t ;


 int VIDEO_ES ;
 int VoutFixFormatAR (TYPE_1__*) ;
 int video_format_Copy (TYPE_1__*,TYPE_1__ const*) ;
 int video_format_FixRgb (TYPE_1__*) ;
 int vlc_fourcc_GetCodec (int ,int ) ;

__attribute__((used)) static void VoutFixFormat(video_format_t *dst, const video_format_t *src)
{
    video_format_Copy(dst, src);
    dst->i_chroma = vlc_fourcc_GetCodec(VIDEO_ES, src->i_chroma);
    VoutFixFormatAR( dst );
    video_format_FixRgb(dst);
}
