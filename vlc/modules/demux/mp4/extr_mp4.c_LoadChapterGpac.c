
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_13__ {int i_time_offset; int * psz_name; } ;
typedef TYPE_2__ seekpoint_t ;
typedef int msftime_t ;
struct TYPE_14__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_15__ {TYPE_7__* p_title; } ;
typedef TYPE_4__ demux_sys_t ;
struct TYPE_16__ {int seekpoint; int i_seekpoint; } ;
struct TYPE_12__ {int i_start; int psz_name; } ;
struct TYPE_11__ {int i_chapter; TYPE_1__* chapter; } ;
typedef int MP4_Box_t ;


 TYPE_10__* BOXDATA (int *) ;
 int EnsureUTF8 (int *) ;
 int TAB_APPEND (int ,int ,TYPE_2__*) ;
 int VLC_TICK_FROM_MSFTIME (int ) ;
 int * strdup (int ) ;
 TYPE_7__* vlc_input_title_New () ;
 int vlc_seekpoint_Delete (TYPE_2__*) ;
 TYPE_2__* vlc_seekpoint_New () ;

__attribute__((used)) static void LoadChapterGpac( demux_t *p_demux, MP4_Box_t *p_chpl )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if( BOXDATA(p_chpl)->i_chapter == 0 )
        return;

    p_sys->p_title = vlc_input_title_New();
    for( int i = 0; i < BOXDATA(p_chpl)->i_chapter && p_sys->p_title; i++ )
    {
        seekpoint_t *s = vlc_seekpoint_New();
        if( s == ((void*)0)) continue;

        s->psz_name = strdup( BOXDATA(p_chpl)->chapter[i].psz_name );
        if( s->psz_name == ((void*)0))
        {
            vlc_seekpoint_Delete( s );;
            continue;
        }

        EnsureUTF8( s->psz_name );
        msftime_t offset = BOXDATA(p_chpl)->chapter[i].i_start;
        s->i_time_offset = VLC_TICK_FROM_MSFTIME(offset);
        TAB_APPEND( p_sys->p_title->i_seekpoint, p_sys->p_title->seekpoint, s );
    }
}
