
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int i_time_offset; int psz_name; } ;
typedef TYPE_1__ seekpoint_t ;
struct TYPE_10__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_11__ {TYPE_5__* p_title; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_13__ {unsigned int i_chapter_count; int * pi_chapter_start; } ;
struct TYPE_12__ {int seekpoint; int i_seekpoint; } ;
typedef int MP4_Box_t ;


 TYPE_8__* BOXDATA (int *) ;
 int EnsureUTF8 (int ) ;
 int TAB_APPEND (int ,int ,TYPE_1__*) ;
 int VLC_TICK_FROM_MS (int ) ;
 int asprintf (int *,char*,unsigned int) ;
 TYPE_5__* vlc_input_title_New () ;
 TYPE_1__* vlc_seekpoint_New () ;

__attribute__((used)) static void LoadChapterGoPro( demux_t *p_demux, MP4_Box_t *p_hmmt )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    p_sys->p_title = vlc_input_title_New();
    if( p_sys->p_title )
        for( unsigned i = 0; i < BOXDATA(p_hmmt)->i_chapter_count; i++ )
        {
            seekpoint_t *s = vlc_seekpoint_New();
            if( s )
            {
                if( asprintf( &s->psz_name, "HiLight tag #%u", i+1 ) != -1 )
                    EnsureUTF8( s->psz_name );


                s->i_time_offset = VLC_TICK_FROM_MS( BOXDATA(p_hmmt)->pi_chapter_start[i] );
                TAB_APPEND( p_sys->p_title->i_seekpoint, p_sys->p_title->seekpoint, s );
            }
        }
}
