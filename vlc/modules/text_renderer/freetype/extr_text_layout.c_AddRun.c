
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int text_style_t ;
struct TYPE_7__ {int i_start_offset; int i_end_offset; int direction; int script; int const* p_style; int p_face; } ;
typedef TYPE_1__ run_desc_t ;
struct TYPE_8__ {int i_size; int i_runs_count; int i_runs_size; int* p_levels; int* pi_run_ids; int * p_scripts; int const** pp_styles; TYPE_1__* p_runs; } ;
typedef TYPE_2__ paragraph_t ;
typedef int filter_t ;
typedef int FT_Face ;


 int HB_DIRECTION_LTR ;
 int HB_DIRECTION_RTL ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int memset (TYPE_1__*,int ,int) ;
 int msg_Err (int *,char*,int,int,int) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;

__attribute__((used)) static int AddRun( filter_t *p_filter,
                   paragraph_t *p_paragraph,
                   int i_start_offset,
                   int i_end_offset,
                   FT_Face p_face,
                   const text_style_t *p_style )
{
    if( i_start_offset >= i_end_offset
     || i_start_offset < 0 || i_start_offset >= p_paragraph->i_size
     || i_end_offset <= 0 || i_end_offset > p_paragraph->i_size )
    {
        msg_Err( p_filter,
                 "AddRun() invalid parameters. Paragraph size: %d, "
                 "Start offset: %d, End offset: %d",
                 p_paragraph->i_size, i_start_offset, i_end_offset );
        return VLC_EGENERIC;
    }

    if( p_paragraph->i_runs_count == p_paragraph->i_runs_size )
    {
        run_desc_t *p_new_runs =
            realloc( p_paragraph->p_runs,
                     p_paragraph->i_runs_size * 2 * sizeof( *p_new_runs ) );
        if( !p_new_runs )
            return VLC_ENOMEM;

        memset( p_new_runs + p_paragraph->i_runs_size , 0,
                p_paragraph->i_runs_size * sizeof( *p_new_runs ) );

        p_paragraph->p_runs = p_new_runs;
        p_paragraph->i_runs_size *= 2;
    }

    int i_run_id = p_paragraph->i_runs_count;
    run_desc_t *p_run = p_paragraph->p_runs + p_paragraph->i_runs_count++;
    p_run->i_start_offset = i_start_offset;
    p_run->i_end_offset = i_end_offset;
    p_run->p_face = p_face;

    if( p_style )
        p_run->p_style = p_style;
    else
        p_run->p_style = p_paragraph->pp_styles[ i_start_offset ];







    for( int i = i_start_offset; i < i_end_offset; ++i )
        p_paragraph->pi_run_ids[ i ] = i_run_id;

    return VLC_SUCCESS;
}
