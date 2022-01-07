
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_10__ {int i_flags; int seekpoint; int i_seekpoint; void* i_time_offset; void* i_length; void* psz_name; } ;
typedef TYPE_1__ seekpoint_t ;
typedef int int32_t ;
typedef TYPE_1__ input_title_t ;
struct TYPE_11__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_12__ {int title; int i_title; int dvdnav; } ;
typedef TYPE_4__ demux_sys_t ;


 void* FROM_SCALE_NZ (scalar_t__) ;
 int INPUT_TITLE_INTERACTIVE ;
 int INPUT_TITLE_MENU ;
 int TAB_APPEND (int ,int ,TYPE_1__*) ;
 int __MAX (int,int) ;
 int dvdnav_describe_title_chapters (int ,int,scalar_t__**,scalar_t__*) ;
 int dvdnav_get_number_of_titles (int ,int*) ;
 int free (scalar_t__*) ;
 int msg_Err (TYPE_3__*,char*) ;
 void* strdup (char*) ;
 TYPE_1__* vlc_input_title_New () ;
 TYPE_1__* vlc_seekpoint_New () ;

__attribute__((used)) static void DemuxTitles( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    input_title_t *t;
    seekpoint_t *s;
    int32_t i_titles;


    t = vlc_input_title_New();
    t->i_flags = INPUT_TITLE_MENU | INPUT_TITLE_INTERACTIVE;
    t->psz_name = strdup( "DVD Menu" );

    s = vlc_seekpoint_New();
    s->psz_name = strdup( "Resume" );
    TAB_APPEND( t->i_seekpoint, t->seekpoint, s );

    s = vlc_seekpoint_New();
    s->psz_name = strdup( "Root" );
    TAB_APPEND( t->i_seekpoint, t->seekpoint, s );

    s = vlc_seekpoint_New();
    s->psz_name = strdup( "Title" );
    TAB_APPEND( t->i_seekpoint, t->seekpoint, s );

    s = vlc_seekpoint_New();
    s->psz_name = strdup( "Chapter" );
    TAB_APPEND( t->i_seekpoint, t->seekpoint, s );

    s = vlc_seekpoint_New();
    s->psz_name = strdup( "Subtitle" );
    TAB_APPEND( t->i_seekpoint, t->seekpoint, s );

    s = vlc_seekpoint_New();
    s->psz_name = strdup( "Audio" );
    TAB_APPEND( t->i_seekpoint, t->seekpoint, s );

    s = vlc_seekpoint_New();
    s->psz_name = strdup( "Angle" );
    TAB_APPEND( t->i_seekpoint, t->seekpoint, s );

    TAB_APPEND( p_sys->i_title, p_sys->title, t );


    dvdnav_get_number_of_titles( p_sys->dvdnav, &i_titles );

    if( i_titles > 90 )
        msg_Err( p_demux, "This is probably an Arccos Protected DVD. This could take time..." );

    for( int i = 1; i <= i_titles; i++ )
    {
        uint64_t i_title_length;
        uint64_t *p_chapters_time;

        int32_t i_chapters = dvdnav_describe_title_chapters( p_sys->dvdnav, i,
                                                            &p_chapters_time,
                                                            &i_title_length );
        if( i_chapters < 1 )
        {
            i_title_length = 0;
            p_chapters_time = ((void*)0);
        }
        t = vlc_input_title_New();
        t->i_length = FROM_SCALE_NZ(i_title_length);
        for( int j = 0; j < __MAX( i_chapters, 1 ); j++ )
        {
            s = vlc_seekpoint_New();
            if( p_chapters_time )
            {
                if ( j > 0 )
                    s->i_time_offset = FROM_SCALE_NZ(p_chapters_time[j - 1]);
                else
                    s->i_time_offset = 0;
            }
            TAB_APPEND( t->i_seekpoint, t->seekpoint, s );
        }
        free( p_chapters_time );
        TAB_APPEND( p_sys->i_title, p_sys->title, t );
    }
}
