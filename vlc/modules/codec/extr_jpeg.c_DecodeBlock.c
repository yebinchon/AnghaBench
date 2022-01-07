
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_17__ ;


struct TYPE_30__ {scalar_t__ date; TYPE_2__* p; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_27__ {unsigned int i_visible_height; unsigned int i_height; int i_sar_num; int i_sar_den; int orientation; int i_width; int i_visible_width; } ;
struct TYPE_28__ {TYPE_17__ video; } ;
struct TYPE_31__ {TYPE_1__ fmt_out; TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_34__ {unsigned int output_height; scalar_t__ output_scanline; int output_width; int out_color_space; } ;
struct TYPE_32__ {scalar_t__* p_row_pointers; TYPE_8__ p_jpeg; int setjmp_buffer; } ;
typedef TYPE_5__ decoder_sys_t ;
struct TYPE_33__ {int i_flags; scalar_t__ i_pts; scalar_t__ i_dts; int i_buffer; int p_buffer; } ;
typedef TYPE_6__ block_t ;
struct TYPE_29__ {unsigned int i_pitch; scalar_t__ p_pixels; } ;
typedef int JSAMPROW ;


 int BLOCK_FLAG_CORRUPTED ;
 int EXIF_JPEG_MARKER ;
 int JCS_RGB ;
 int ORIENT_FROM_EXIF (int) ;
 int TRUE ;
 int VLCDEC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_6__*) ;
 TYPE_3__* decoder_NewPicture (TYPE_4__*) ;
 int decoder_QueueVideo (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ decoder_UpdateVideoFormat (TYPE_4__*) ;
 int free (scalar_t__*) ;
 int jpeg_GetOrientation (TYPE_8__*) ;
 int jpeg_GetProjection (TYPE_8__*,TYPE_17__*) ;
 int jpeg_create_decompress (TYPE_8__*) ;
 int jpeg_destroy_decompress (TYPE_8__*) ;
 int jpeg_finish_decompress (TYPE_8__*) ;
 int jpeg_mem_src (TYPE_8__*,int ,int ) ;
 int jpeg_read_header (TYPE_8__*,int ) ;
 int jpeg_read_scanlines (TYPE_8__*,scalar_t__*,scalar_t__) ;
 int jpeg_save_markers (TYPE_8__*,int ,int) ;
 int jpeg_start_decompress (TYPE_8__*) ;
 int msg_Dbg (TYPE_4__*,char*,int) ;
 scalar_t__ setjmp (int ) ;
 scalar_t__* vlc_alloc (unsigned int,int) ;

__attribute__((used)) static int DecodeBlock(decoder_t *p_dec, block_t *p_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    picture_t *p_pic = 0;

    p_sys->p_row_pointers = ((void*)0);

    if (!p_block)
        return VLCDEC_SUCCESS;

    if (p_block->i_flags & BLOCK_FLAG_CORRUPTED )
    {
        block_Release(p_block);
        return VLCDEC_SUCCESS;
    }


    if (setjmp(p_sys->setjmp_buffer))
    {
        goto error;
    }

    jpeg_create_decompress(&p_sys->p_jpeg);
    jpeg_mem_src(&p_sys->p_jpeg, p_block->p_buffer, p_block->i_buffer);
    jpeg_save_markers( &p_sys->p_jpeg, EXIF_JPEG_MARKER, 0xffff );
    jpeg_read_header(&p_sys->p_jpeg, TRUE);

    p_sys->p_jpeg.out_color_space = JCS_RGB;

    jpeg_start_decompress(&p_sys->p_jpeg);


    p_dec->fmt_out.video.i_visible_width = p_dec->fmt_out.video.i_width = p_sys->p_jpeg.output_width;
    p_dec->fmt_out.video.i_visible_height = p_dec->fmt_out.video.i_height = p_sys->p_jpeg.output_height;
    p_dec->fmt_out.video.i_sar_num = 1;
    p_dec->fmt_out.video.i_sar_den = 1;

    int i_otag;
    i_otag = jpeg_GetOrientation( &p_sys->p_jpeg );
    if ( i_otag > 1 )
    {
        msg_Dbg( p_dec, "Jpeg orientation is %d", i_otag );
        p_dec->fmt_out.video.orientation = ORIENT_FROM_EXIF( i_otag );
    }
    jpeg_GetProjection(&p_sys->p_jpeg, &p_dec->fmt_out.video);


    if (decoder_UpdateVideoFormat(p_dec))
    {
        goto error;
    }
    p_pic = decoder_NewPicture(p_dec);
    if (!p_pic)
    {
        goto error;
    }


    p_sys->p_row_pointers = vlc_alloc(p_sys->p_jpeg.output_height, sizeof(JSAMPROW));
    if (!p_sys->p_row_pointers)
    {
        goto error;
    }
    for (unsigned i = 0; i < p_sys->p_jpeg.output_height; i++) {
        p_sys->p_row_pointers[i] = p_pic->p->p_pixels + p_pic->p->i_pitch * i;
    }

    while (p_sys->p_jpeg.output_scanline < p_sys->p_jpeg.output_height)
    {
        jpeg_read_scanlines(&p_sys->p_jpeg,
                p_sys->p_row_pointers + p_sys->p_jpeg.output_scanline,
                p_sys->p_jpeg.output_height - p_sys->p_jpeg.output_scanline);
    }

    jpeg_finish_decompress(&p_sys->p_jpeg);
    jpeg_destroy_decompress(&p_sys->p_jpeg);
    free(p_sys->p_row_pointers);

    p_pic->date = p_block->i_pts != VLC_TICK_INVALID ? p_block->i_pts : p_block->i_dts;

    block_Release(p_block);
    decoder_QueueVideo( p_dec, p_pic );
    return VLCDEC_SUCCESS;

error:

    jpeg_destroy_decompress(&p_sys->p_jpeg);
    free(p_sys->p_row_pointers);

    block_Release(p_block);
    return VLCDEC_SUCCESS;
}
