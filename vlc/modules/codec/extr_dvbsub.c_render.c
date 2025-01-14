
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_14__ ;
typedef struct TYPE_28__ TYPE_13__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct TYPE_33__ {int i_entries; scalar_t__** palette; } ;
typedef TYPE_4__ video_palette_t ;
struct TYPE_34__ {int i_sar_num; int i_sar_den; int i_height; int i_visible_height; scalar_t__ i_y_offset; scalar_t__ i_x_offset; scalar_t__ i_visible_width; scalar_t__ i_width; TYPE_4__* p_palette; } ;
typedef TYPE_5__ video_format_t ;
typedef int uint8_t ;
struct TYPE_35__ {int b_ephemer; int b_subtitle; TYPE_7__* p_region; int i_original_picture_height; int i_original_picture_width; int i_start; int b_absolute; } ;
typedef TYPE_6__ subpicture_t ;
struct TYPE_36__ {struct TYPE_36__* p_next; int i_align; scalar_t__ i_y; scalar_t__ i_x; int p_text; TYPE_1__* p_picture; } ;
typedef TYPE_7__ subpicture_region_t ;
struct TYPE_37__ {int i_id; scalar_t__ i_y; scalar_t__ i_x; } ;
typedef TYPE_8__ dvbsub_regiondef_t ;
struct TYPE_38__ {int i_id; int i_height; int i_clut; int i_depth; int i_object_defs; scalar_t__ i_width; TYPE_10__* p_object_defs; int * p_pixbuf; struct TYPE_38__* p_next; } ;
typedef TYPE_9__ dvbsub_region_t ;
struct TYPE_25__ {int i_type; scalar_t__ i_y; scalar_t__ i_x; int psz_text; } ;
typedef TYPE_10__ dvbsub_objectdef_t ;
struct TYPE_26__ {scalar_t__ T; scalar_t__ Cr; scalar_t__ Cb; scalar_t__ Y; } ;
typedef TYPE_11__ dvbsub_color_t ;
struct TYPE_27__ {int i_id; TYPE_11__* c_8b; TYPE_11__* c_4b; TYPE_11__* c_2b; struct TYPE_27__* p_next; } ;
typedef TYPE_12__ dvbsub_clut_t ;
struct TYPE_28__ {TYPE_14__* p_sys; } ;
typedef TYPE_13__ decoder_t ;
struct TYPE_31__ {scalar_t__ i_y; scalar_t__ i_x; scalar_t__ b_windowed; int i_height; int i_width; } ;
struct TYPE_29__ {int i_spu_x; int i_spu_y; int i_spu_position; TYPE_12__* p_cluts; TYPE_9__* p_regions; TYPE_3__* p_page; TYPE_2__ display; int i_pts; int b_absolute; } ;
typedef TYPE_14__ decoder_sys_t ;
struct TYPE_32__ {int i_region_defs; TYPE_8__* p_region_defs; } ;
struct TYPE_30__ {int Y_PITCH; int * Y_PIXELS; } ;


 int VLC_CODEC_TEXT ;
 int VLC_CODEC_YUVP ;
 TYPE_6__* decoder_NewSubpicture (TYPE_13__*,int *) ;
 int memcpy (int *,int *,scalar_t__) ;
 int msg_Dbg (TYPE_13__*,char*,int,...) ;
 int msg_Err (TYPE_13__*,char*) ;
 TYPE_7__* subpicture_region_New (TYPE_5__*) ;
 int text_segment_New (int ) ;
 int video_format_Clean (TYPE_5__*) ;
 int video_format_Init (TYPE_5__*,int ) ;

__attribute__((used)) static subpicture_t *render( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    subpicture_t *p_spu;
    subpicture_region_t **pp_spu_region;
    int i, j;
    int i_base_x;
    int i_base_y;


    p_spu = decoder_NewSubpicture( p_dec, ((void*)0) );
    if( !p_spu )
        return ((void*)0);

    p_spu->b_absolute = p_sys->b_absolute;

    p_spu->i_start = p_sys->i_pts;

    p_spu->b_ephemer = 1;


    p_spu->b_subtitle = 1;


    i_base_x = p_sys->i_spu_x;
    i_base_y = p_sys->i_spu_y;

    p_spu->i_original_picture_width = p_sys->display.i_width;
    p_spu->i_original_picture_height = p_sys->display.i_height;

    if( p_sys->display.b_windowed )
    {
        i_base_x += p_sys->display.i_x;
        i_base_y += p_sys->display.i_y;
    }

    pp_spu_region = &p_spu->p_region;







    for( i = 0; p_sys->p_page && ( i < p_sys->p_page->i_region_defs ); i++ )
    {
        dvbsub_region_t *p_region;
        dvbsub_regiondef_t *p_regiondef;
        dvbsub_clut_t *p_clut;
        dvbsub_color_t *p_color;
        subpicture_region_t *p_spu_region;
        uint8_t *p_src, *p_dst;
        video_format_t fmt;
        video_palette_t palette;
        int i_pitch;

        p_regiondef = &p_sys->p_page->p_region_defs[i];


        for( p_region = p_sys->p_regions; p_region != ((void*)0);
             p_region = p_region->p_next )
        {
            if( p_regiondef->i_id == p_region->i_id ) break;
        }
        if( !p_region )
        {
            msg_Dbg( p_dec, "region %i not found", p_regiondef->i_id );
            continue;
        }


        for( p_clut = p_sys->p_cluts; p_clut != ((void*)0); p_clut = p_clut->p_next )
        {
            if( p_region->i_clut == p_clut->i_id ) break;
        }
        if( !p_clut )
        {
            msg_Dbg( p_dec, "clut %i not found", p_region->i_clut );
            continue;
        }





        video_format_Init( &fmt, VLC_CODEC_YUVP );
        fmt.i_sar_num = 0;
        fmt.i_sar_den = 1;
        fmt.i_width = fmt.i_visible_width = p_region->i_width;
        fmt.i_height = fmt.i_visible_height = p_region->i_height;
        fmt.i_x_offset = fmt.i_y_offset = 0;
        fmt.p_palette = &palette;
        fmt.p_palette->i_entries = ( p_region->i_depth == 1 ) ? 4 :
            ( ( p_region->i_depth == 2 ) ? 16 : 256 );
        p_color = ( p_region->i_depth == 1 ) ? p_clut->c_2b :
            ( ( p_region->i_depth == 2 ) ? p_clut->c_4b : p_clut->c_8b );
        for( j = 0; j < fmt.p_palette->i_entries; j++ )
        {
            fmt.p_palette->palette[j][0] = p_color[j].Y;
            fmt.p_palette->palette[j][1] = p_color[j].Cb;
            fmt.p_palette->palette[j][2] = p_color[j].Cr;
            fmt.p_palette->palette[j][3] = 0xff - p_color[j].T;
        }

        p_spu_region = subpicture_region_New( &fmt );
        fmt.p_palette = ((void*)0);
        video_format_Clean( &fmt );
        if( !p_spu_region )
        {
            msg_Err( p_dec, "cannot allocate SPU region" );
            continue;
        }
        p_spu_region->i_x = i_base_x + p_regiondef->i_x;
        p_spu_region->i_y = i_base_y + p_regiondef->i_y;
        p_spu_region->i_align = p_sys->i_spu_position;
        *pp_spu_region = p_spu_region;
        pp_spu_region = &p_spu_region->p_next;

        p_src = p_region->p_pixbuf;
        p_dst = p_spu_region->p_picture->Y_PIXELS;
        i_pitch = p_spu_region->p_picture->Y_PITCH;


        for( j = 0; j < p_region->i_height; j++ )
        {
            memcpy( p_dst, p_src, p_region->i_width );
            p_src += p_region->i_width;
            p_dst += i_pitch;
        }



        for( j = 0; j < p_region->i_object_defs; j++ )
        {
            dvbsub_objectdef_t *p_object_def = &p_region->p_object_defs[j];

            if( ( p_object_def->i_type != 1 ) || !p_object_def->psz_text )
                continue;


            video_format_Init( &fmt, VLC_CODEC_TEXT );
            fmt.i_sar_num = 1;
            fmt.i_sar_den = 1;
            fmt.i_width = fmt.i_visible_width = p_region->i_width;
            fmt.i_height = fmt.i_visible_height = p_region->i_height;
            fmt.i_x_offset = fmt.i_y_offset = 0;
            p_spu_region = subpicture_region_New( &fmt );
            video_format_Clean( &fmt );

            p_spu_region->p_text = text_segment_New( p_object_def->psz_text );
            p_spu_region->i_x = i_base_x + p_regiondef->i_x + p_object_def->i_x;
            p_spu_region->i_y = i_base_y + p_regiondef->i_y + p_object_def->i_y;
            p_spu_region->i_align = p_sys->i_spu_position;
            *pp_spu_region = p_spu_region;
            pp_spu_region = &p_spu_region->p_next;
        }
    }

    return p_spu;
}
