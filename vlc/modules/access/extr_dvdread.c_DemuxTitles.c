
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int nr_of_srpts; TYPE_2__* title; } ;
typedef TYPE_3__ tt_srpt_t ;
struct TYPE_16__ {int seekpoint; int i_seekpoint; } ;
typedef TYPE_4__ seekpoint_t ;
typedef int int32_t ;
typedef TYPE_4__ input_title_t ;
struct TYPE_17__ {TYPE_7__* p_sys; } ;
typedef TYPE_6__ demux_t ;
struct TYPE_18__ {int titles; int i_titles; TYPE_1__* p_vmg_file; } ;
typedef TYPE_7__ demux_sys_t ;
struct TYPE_14__ {int nr_of_ptts; } ;
struct TYPE_13__ {TYPE_3__* tt_srpt; } ;


 int TAB_APPEND (int ,int ,TYPE_4__*) ;
 int VLC_UNUSED (int*) ;
 int __MAX (int,int) ;
 int msg_Dbg (TYPE_6__*,char*,int,...) ;
 TYPE_4__* vlc_input_title_New () ;
 TYPE_4__* vlc_seekpoint_New () ;

__attribute__((used)) static void DemuxTitles( demux_t *p_demux, int *pi_angle )
{
    VLC_UNUSED( pi_angle );

    demux_sys_t *p_sys = p_demux->p_sys;
    input_title_t *t;
    seekpoint_t *s;


    const tt_srpt_t *tt_srpt = p_sys->p_vmg_file->tt_srpt;

    int32_t i_titles = tt_srpt->nr_of_srpts;
    msg_Dbg( p_demux, "number of titles: %d", i_titles );

    for( int i = 0; i < i_titles; i++ )
    {
        int32_t i_chapters = 0;
        int j;

        i_chapters = tt_srpt->title[i].nr_of_ptts;
        msg_Dbg( p_demux, "title %d has %d chapters", i, i_chapters );

        t = vlc_input_title_New();

        for( j = 0; j < __MAX( i_chapters, 1 ); j++ )
        {
            s = vlc_seekpoint_New();
            TAB_APPEND( t->i_seekpoint, t->seekpoint, s );
        }

        TAB_APPEND( p_sys->i_titles, p_sys->titles, t );
    }
}
