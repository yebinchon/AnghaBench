
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
typedef scalar_t__ uint8_t ;
struct vpx_image {int fmt; scalar_t__ cs; scalar_t__ bit_depth; } ;
struct TYPE_3__ {int i_chroma_id; scalar_t__ i_bitdepth; scalar_t__ i_needs_hack; int i_chroma; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ VPX_CS_SRGB ;
 int VPX_IMG_FMT_I444 ;
 TYPE_1__* chroma_table ;

__attribute__((used)) static vlc_fourcc_t FindVlcChroma( struct vpx_image *img )
{
    uint8_t hack = (img->fmt & VPX_IMG_FMT_I444) && (img->cs == VPX_CS_SRGB);

    for( unsigned int i = 0; i < ARRAY_SIZE(chroma_table); i++ )
        if( chroma_table[i].i_chroma_id == img->fmt &&
            chroma_table[i].i_bitdepth == img->bit_depth &&
            chroma_table[i].i_needs_hack == hack )
            return chroma_table[i].i_chroma;

    return 0;
}
