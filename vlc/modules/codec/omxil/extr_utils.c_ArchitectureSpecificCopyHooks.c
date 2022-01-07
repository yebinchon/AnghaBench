
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_codec; } ;
struct TYPE_7__ {TYPE_1__ fmt_out; } ;
typedef TYPE_2__ decoder_t ;
typedef int copy_cache_t ;
struct TYPE_8__ {int * data; } ;
typedef TYPE_3__ ArchitectureSpecificCopyData ;


 scalar_t__ CopyInitCache (int *,int) ;
 int OMX_COLOR_FormatYUV420SemiPlanar ;
 int VLC_CODEC_YV12 ;
 int free (int *) ;
 int * malloc (int) ;
 scalar_t__ vlc_CPU_SSE2 () ;

void ArchitectureSpecificCopyHooks( decoder_t *p_dec, int i_color_format,
                                    int i_slice_height, int i_src_stride,
                                    ArchitectureSpecificCopyData *p_architecture_specific )
{
    (void)i_slice_height;
}
