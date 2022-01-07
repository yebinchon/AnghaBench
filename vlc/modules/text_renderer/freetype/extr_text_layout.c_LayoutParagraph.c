
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


struct TYPE_16__ {TYPE_2__* p_style; } ;
typedef TYPE_3__ run_desc_t ;
struct TYPE_17__ {TYPE_1__* p_laid; } ;
typedef TYPE_4__ const ruby_block_t ;
struct TYPE_18__ {scalar_t__ i_size; scalar_t__ i_runs_count; size_t* pi_run_ids; TYPE_7__* p_glyph_bitmaps; TYPE_3__* p_runs; TYPE_4__ const** pp_ruby; } ;
typedef TYPE_5__ paragraph_t ;
struct TYPE_19__ {struct TYPE_19__* p_next; } ;
typedef TYPE_6__ line_desc_t ;
typedef int filter_t ;
struct TYPE_20__ {int i_x_advance; } ;
struct TYPE_15__ {scalar_t__ e_wrapinfo; } ;
struct TYPE_14__ {int i_width; } ;
typedef unsigned int FT_Pos ;


 int FreeLines (TYPE_6__*) ;
 scalar_t__ IsWhitespaceAt (TYPE_5__*,int) ;
 scalar_t__ LayoutLine (int *,TYPE_5__*,int,int,int,TYPE_6__**) ;
 int ReleaseGlyphBitMaps (TYPE_7__*) ;
 scalar_t__ STYLE_WRAP_DEFAULT ;
 scalar_t__ STYLE_WRAP_NONE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Dbg (int *,char*) ;
 int msg_Err (int *,char*,...) ;

__attribute__((used)) static int LayoutParagraph( filter_t *p_filter, paragraph_t *p_paragraph,
                            unsigned i_max_width, unsigned i_max_advance_x,
                            bool b_grid, bool b_balance,
                            line_desc_t **pp_lines )
{
    if( p_paragraph->i_size <= 0 || p_paragraph->i_runs_count <= 0 )
    {
        msg_Err( p_filter, "LayoutParagraph() invalid parameters. "
                 "Paragraph size: %d. Runs count %d",
                 p_paragraph->i_size, p_paragraph->i_runs_count );
        return VLC_EGENERIC;
    }





    if( i_max_width <= i_max_advance_x )
    {
        msg_Err( p_filter, "LayoutParagraph(): Invalid max width" );
        return VLC_EGENERIC;
    }

    i_max_width <<= 6;
    i_max_advance_x <<= 6;

    int i_line_start = 0;
    FT_Pos i_width = 0;
    FT_Pos i_preferred_width = i_max_width;
    FT_Pos i_total_width = 0;
    FT_Pos i_last_space_width = 0;
    int i_last_space = -1;
    line_desc_t *p_first_line = ((void*)0);
    line_desc_t **pp_line = &p_first_line;

    for( int i = 0; i < p_paragraph->i_size; ++i )
    {
        if( !IsWhitespaceAt( p_paragraph, i ) || i != i_last_space + 1 )
            i_total_width += p_paragraph->p_glyph_bitmaps[ i ].i_x_advance;
        else
            i_last_space = i;
    }
    i_last_space = -1;

    if( i_total_width == 0 )
    {
        for( int i=0; i < p_paragraph->i_size; ++i )
            ReleaseGlyphBitMaps( &p_paragraph->p_glyph_bitmaps[ i ] );
        return VLC_SUCCESS;
    }

    if( b_balance )
    {
        int i_line_count = i_total_width / (i_max_width - i_max_advance_x) + 1;
        i_preferred_width = i_total_width / i_line_count;
    }

    for( int i = 0; i <= p_paragraph->i_size; ++i )
    {
        if( i == p_paragraph->i_size )
        {
            if( i_line_start < i )
                if( LayoutLine( p_filter, p_paragraph,
                                i_line_start, i - 1, b_grid, pp_line ) )
                    goto error;

            break;
        }

        if( p_paragraph->pp_ruby &&
            p_paragraph->pp_ruby[i] &&
            p_paragraph->pp_ruby[i]->p_laid )
        {

            const ruby_block_t *p_rubyseq = p_paragraph->pp_ruby[i];
            int i_advance = 0;
            int i_advanceruby = p_rubyseq->p_laid->i_width;
            while( i + 1 < p_paragraph->i_size &&
                   p_rubyseq == p_paragraph->pp_ruby[i + 1] )
                i_advance += p_paragraph->p_glyph_bitmaps[ i++ ].i_x_advance;

            i_width += (i_advance < i_advanceruby) ? i_advanceruby : i_advance;
            continue;
        }

        if( IsWhitespaceAt( p_paragraph, i ) )
        {
            if( i_line_start == i )
            {





                ReleaseGlyphBitMaps( &p_paragraph->p_glyph_bitmaps[ i ] );
                i_line_start = i + 1;
                continue;
            }

            if( i_last_space == i - 1 )
            {
                i_last_space = i;
                continue;
            }

            i_last_space = i;
            i_last_space_width = i_width;
        }

        const run_desc_t *p_run = &p_paragraph->p_runs[p_paragraph->pi_run_ids[i]];
        const int i_advance_x = p_paragraph->p_glyph_bitmaps[ i ].i_x_advance;

        if( ( i_last_space_width + i_advance_x > i_preferred_width &&
              p_run->p_style->e_wrapinfo == STYLE_WRAP_DEFAULT )
            || i_width + i_advance_x > i_max_width )
        {
            if( i_line_start == i )
            {


                msg_Dbg( p_filter, "LayoutParagraph(): First glyph width in line exceeds maximum, skipping" );
                for( ; i < p_paragraph->i_size; ++i )
                    ReleaseGlyphBitMaps( &p_paragraph->p_glyph_bitmaps[ i ] );
                return VLC_SUCCESS;
            }

            int i_newline_start;
            if( i_last_space > i_line_start && p_run->p_style->e_wrapinfo == STYLE_WRAP_DEFAULT )
                i_newline_start = i_last_space;
            else
                i_newline_start = i;

            if( LayoutLine( p_filter, p_paragraph, i_line_start,
                            i_newline_start - 1, b_grid, pp_line ) )
                goto error;



            if( p_run->p_style->e_wrapinfo == STYLE_WRAP_NONE )
            {
                for( ; i < p_paragraph->i_size; ++i )
                    ReleaseGlyphBitMaps( &p_paragraph->p_glyph_bitmaps[ i ] );
                break;
            }

            pp_line = &( *pp_line )->p_next;



            if( i_newline_start == i_last_space )
            {
                i_width = i_width - i_last_space_width;
                if( i_newline_start + 1 < p_paragraph->i_size )
                    i_line_start = i_newline_start + 1;
                else
                    i_line_start = i_newline_start;
            }
            else
            {
                i_width = 0;
                i_line_start = i_newline_start;
            }
            i_last_space_width = 0;
        }
        i_width += i_advance_x;
    }

    *pp_lines = p_first_line;
    return VLC_SUCCESS;

error:
    for( int i = i_line_start; i < p_paragraph->i_size; ++i )
        ReleaseGlyphBitMaps( &p_paragraph->p_glyph_bitmaps[ i ] );
    if( p_first_line )
        FreeLines( p_first_line );
    return VLC_EGENERIC;
}
