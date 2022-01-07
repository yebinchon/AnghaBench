
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ i_y_offset; scalar_t__ i_x_offset; scalar_t__ i_height; scalar_t__ i_width; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_17__ {int i_x; int i_y; int i_align; int * p_next; int p_text; } ;
typedef TYPE_2__ subpicture_region_t ;
struct TYPE_18__ {int i_align; int i_margin_h; int i_margin_v; int p_style; int psz_stylename; } ;
typedef TYPE_3__ ssa_style_t ;
struct TYPE_19__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_20__ {int i_ssa_styles; TYPE_3__** pp_ssa_styles; } ;
typedef TYPE_5__ decoder_sys_t ;


 TYPE_3__* ParseStyle (TYPE_5__*,char*) ;
 int SUBPICTURE_ALIGN_BOTTOM ;
 int SetupPositions (TYPE_2__*,char*) ;
 int VLC_CODEC_TEXT ;
 int msg_Dbg (TYPE_4__*,char*,int ) ;
 int strcasecmp (int ,char*) ;
 TYPE_2__* subpicture_region_New (TYPE_1__*) ;
 int text_segment_New (int *) ;
 int text_segment_NewInheritStyle (int ) ;
 int video_format_Clean (TYPE_1__*) ;
 int video_format_Init (TYPE_1__*,int ) ;

__attribute__((used)) static subpicture_region_t *CreateTextRegion( decoder_t *p_dec,
                                              char *psz_subtitle,
                                              int i_sys_align )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    subpicture_region_t *p_text_region;
    video_format_t fmt;


    video_format_Init( &fmt, VLC_CODEC_TEXT );
    fmt.i_width = fmt.i_height = 0;
    fmt.i_x_offset = fmt.i_y_offset = 0;
    p_text_region = subpicture_region_New( &fmt );
    video_format_Clean( &fmt );

    if( p_text_region != ((void*)0) )
    {
        ssa_style_t *p_ssa_style = ((void*)0);

        p_ssa_style = ParseStyle( p_sys, psz_subtitle );
        if( !p_ssa_style )
        {
            for( int i = 0; i < p_sys->i_ssa_styles; i++ )
            {
                if( !strcasecmp( p_sys->pp_ssa_styles[i]->psz_stylename, "Default" ) )
                    p_ssa_style = p_sys->pp_ssa_styles[i];
            }
        }



        p_text_region->i_x = i_sys_align > 0 ? 20 : 0;
        p_text_region->i_y = 10;
        p_text_region->i_align = SUBPICTURE_ALIGN_BOTTOM |
                                 ((i_sys_align > 0) ? i_sys_align : 0);

        if( p_ssa_style )
        {
            msg_Dbg( p_dec, "style is: %s", p_ssa_style->psz_stylename );
            if( i_sys_align == -1 )
            {
                p_text_region->i_align = p_ssa_style->i_align;
                p_text_region->i_x = p_ssa_style->i_margin_h;
                p_text_region->i_y = p_ssa_style->i_margin_v;
            }
            p_text_region->p_text = text_segment_NewInheritStyle( p_ssa_style->p_style );
        }
        else
        {
            p_text_region->p_text = text_segment_New( ((void*)0) );
        }



        SetupPositions( p_text_region, psz_subtitle );

        p_text_region->p_next = ((void*)0);
    }
    return p_text_region;
}
