
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t i_event; TYPE_1__** pp_event; } ;
typedef TYPE_2__ vlc_epg_t ;
struct TYPE_4__ {char const* psz_name; } ;


 int assert (int) ;

__attribute__((used)) static void assert_events( const vlc_epg_t *p_epg, const char *psz_names, size_t i_names )
{
    assert( p_epg->i_event == i_names );
    for( size_t i = 0; i < p_epg->i_event; i++ )
    {
        assert( p_epg->pp_event[i]->psz_name &&
                p_epg->pp_event[i]->psz_name[0] == psz_names[i] );
    }
}
