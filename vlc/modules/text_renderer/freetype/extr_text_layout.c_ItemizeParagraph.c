
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int text_style_t ;
struct TYPE_5__ {scalar_t__ i_size; scalar_t__* p_scripts; scalar_t__* p_levels; int ** pp_styles; } ;
typedef TYPE_1__ paragraph_t ;
typedef scalar_t__ hb_script_t ;
typedef int filter_t ;
typedef scalar_t__ FriBidiLevel ;


 int AddRun (int *,TYPE_1__*,int,int,int *,int *) ;
 int AddRunWithFallback (int *,TYPE_1__*,int,int) ;
 int FaceStyleEquals (int *,int const*,int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (int *,char*,scalar_t__) ;

__attribute__((used)) static int ItemizeParagraph( filter_t *p_filter, paragraph_t *p_paragraph )
{
    if( p_paragraph->i_size <= 0 )
    {
        msg_Err( p_filter,
                 "ItemizeParagraph() invalid parameters. Paragraph size: %d",
                 p_paragraph->i_size );
        return VLC_EGENERIC;
    }

    int i_last_run_start = 0;
    const text_style_t *p_last_style = p_paragraph->pp_styles[ 0 ];






    for( int i = 0; i <= p_paragraph->i_size; ++i )
    {
        if( i == p_paragraph->i_size




            || !FaceStyleEquals( p_filter, p_last_style, p_paragraph->pp_styles[ i ] ) )
        {
            int i_ret;



            i_ret = AddRun( p_filter, p_paragraph, i_last_run_start, i, ((void*)0), ((void*)0) );

            if( i_ret )
                return i_ret;

            if( i < p_paragraph->i_size )
            {
                i_last_run_start = i;
                p_last_style = p_paragraph->pp_styles[ i ];




            }
        }
    }
    return VLC_SUCCESS;
}
