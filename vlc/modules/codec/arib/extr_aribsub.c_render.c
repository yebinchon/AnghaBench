
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {TYPE_7__* p_sys; } ;
struct TYPE_17__ {scalar_t__ i_start; scalar_t__ i_stop; int b_ephemer; int b_absolute; TYPE_1__ updater; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_18__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_19__ {int b_ignore_position_adjustment; scalar_t__ b_ignore_ruby; scalar_t__ b_a_profile; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_20__ {scalar_t__ i_pts; } ;
typedef TYPE_5__ block_t ;
struct TYPE_21__ {int i_fontheight; struct TYPE_21__* p_next; int i_charbottom_adj; int i_charleft_adj; int i_charbottom; int i_charleft; int i_horint; int i_verint; int i_fontwidth; int i_planeheight; int i_planewidth; int i_font_color; int * psz_fontname; int psz_text; } ;
typedef TYPE_6__ arib_text_region_t ;
struct TYPE_22__ {TYPE_6__* p_region; } ;
typedef TYPE_7__ arib_spu_updater_sys_t ;
typedef int arib_parser_t ;
typedef int arib_decoder_t ;
struct TYPE_23__ {int i_fontheight; int p_end; int p_start; struct TYPE_23__* p_next; int i_veradj; int i_horadj; int i_charbottom; int i_charleft; int i_horint; int i_verint; int i_fontwidth; int i_planeheight; int i_planewidth; int i_foreground_color; } ;
typedef TYPE_8__ arib_buf_region_t ;


 scalar_t__ VLC_TICK_FROM_US (int ) ;
 size_t arib_decode_buffer (int *,unsigned char const*,size_t,char*,size_t) ;
 TYPE_8__* arib_decoder_get_regions (int *) ;
 int arib_decoder_get_time (int *) ;
 int arib_finalize_decoder (int *) ;
 int arib_initialize_decoder_a_profile (int *) ;
 int arib_initialize_decoder_c_profile (int *) ;
 unsigned char* arib_parser_get_data (int *,size_t*) ;
 scalar_t__ calloc (int,int) ;
 TYPE_2__* decoder_NewSubpictureText (TYPE_3__*) ;
 int free (char*) ;
 int msg_Dbg (TYPE_3__*,char*,char*) ;
 int sprintf (char*,char*,int ) ;
 int strdup (char*) ;
 int strncpy (char*,int,int) ;

__attribute__((used)) static subpicture_t *render( decoder_t *p_dec, arib_parser_t *p_parser,
                             arib_decoder_t *p_arib_decoder, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    subpicture_t *p_spu = ((void*)0);
    char *psz_subtitle = ((void*)0);

    size_t i_data_size;
    const unsigned char *psz_data = arib_parser_get_data( p_parser, &i_data_size );
    if( !psz_data || !i_data_size )
        return ((void*)0);

    size_t i_subtitle_size = i_data_size * 4;
    psz_subtitle = (char*) calloc( i_subtitle_size + 1, sizeof(*psz_subtitle) );
    if( psz_subtitle == ((void*)0) )
    {
        return ((void*)0);
    }
    if( p_sys->b_a_profile )
        arib_initialize_decoder_a_profile( p_arib_decoder );
    else
        arib_initialize_decoder_c_profile( p_arib_decoder );

    i_subtitle_size = arib_decode_buffer( p_arib_decoder,
                                          psz_data,
                                          i_data_size,
                                          psz_subtitle,
                                          i_subtitle_size );
    p_spu = decoder_NewSubpictureText( p_dec );
    if( p_spu == ((void*)0) )
    {
        goto decoder_NewSubpictureText_failed;
    }

    p_spu->i_start = p_block->i_pts;
    p_spu->i_stop = p_block->i_pts + VLC_TICK_FROM_US(arib_decoder_get_time( p_arib_decoder ));
    p_spu->b_ephemer = (p_spu->i_start == p_spu->i_stop);
    p_spu->b_absolute = 1;

    arib_spu_updater_sys_t *p_spu_sys = p_spu->updater.p_sys;

    arib_text_region_t *p_region = p_spu_sys->p_region =
        (arib_text_region_t*) calloc( 1, sizeof(arib_text_region_t) );
    if( p_region == ((void*)0) )
    {
        goto malloc_failed;
    }
    for( const arib_buf_region_t *p_buf_region = arib_decoder_get_regions( p_arib_decoder );
         p_buf_region; p_buf_region = p_buf_region->p_next )
    {
        if( p_sys->b_ignore_ruby && p_buf_region->i_fontheight == 18 )
        {
            continue;
        }

        int i_size = p_buf_region->p_end - p_buf_region->p_start;
        char *psz_text = (char*) calloc( i_size + 1, sizeof(char) );
        if( psz_text == ((void*)0) )
        {
            goto malloc_failed;
        }
        strncpy(psz_text, p_buf_region->p_start, i_size);
        psz_text[i_size] = '\0';




        p_region->psz_text = strdup( psz_text );
        free( psz_text );
        p_region->psz_fontname = ((void*)0);
        p_region->i_font_color = p_buf_region->i_foreground_color;
        p_region->i_planewidth = p_buf_region->i_planewidth;
        p_region->i_planeheight = p_buf_region->i_planeheight;
        p_region->i_fontwidth = p_buf_region->i_fontwidth;
        p_region->i_fontheight = p_buf_region->i_fontheight;
        p_region->i_verint = p_buf_region->i_verint;
        p_region->i_horint = p_buf_region->i_horint;
        p_region->i_charleft = p_buf_region->i_charleft;
        p_region->i_charbottom = p_buf_region->i_charbottom;
        p_region->i_charleft_adj = 0;
        p_region->i_charbottom_adj = 0;
        if( !p_sys->b_ignore_position_adjustment )
        {
            p_region->i_charleft_adj = p_buf_region->i_horadj;
            p_region->i_charbottom_adj = p_buf_region->i_veradj;
        }
        p_region->p_next = ((void*)0);
        if( p_buf_region->p_next != ((void*)0) )
        {
            p_region = p_region->p_next =
                (arib_text_region_t*) calloc( 1, sizeof(arib_text_region_t) );
            if( p_region == ((void*)0) )
            {
                goto malloc_failed;
            }
        }
    }

decoder_NewSubpictureText_failed:
malloc_failed:
    arib_finalize_decoder( p_arib_decoder );
    free( psz_subtitle );

    return p_spu;
}
