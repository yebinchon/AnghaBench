
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_4__ {TYPE_1__* master; } ;
struct TYPE_3__ {int i_title_end; int i_title_offset; int i_seekpoint_end; int i_seekpoint_offset; } ;


 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 TYPE_2__* input_priv (int *) ;

__attribute__((used)) static int UpdateTitleSeekpoint( input_thread_t *p_input,
                                 int i_title, int i_seekpoint )
{
    int i_title_end = input_priv(p_input)->master->i_title_end -
                        input_priv(p_input)->master->i_title_offset;
    int i_seekpoint_end = input_priv(p_input)->master->i_seekpoint_end -
                            input_priv(p_input)->master->i_seekpoint_offset;

    if( i_title_end >= 0 && i_seekpoint_end >= 0 )
    {
        if( i_title > i_title_end ||
            ( i_title == i_title_end && i_seekpoint > i_seekpoint_end ) )
            return VLC_DEMUXER_EOF;
    }
    else if( i_seekpoint_end >= 0 )
    {
        if( i_seekpoint > i_seekpoint_end )
            return VLC_DEMUXER_EOF;
    }
    else if( i_title_end >= 0 )
    {
        if( i_title > i_title_end )
            return VLC_DEMUXER_EOF;
    }
    return VLC_DEMUXER_SUCCESS;
}
