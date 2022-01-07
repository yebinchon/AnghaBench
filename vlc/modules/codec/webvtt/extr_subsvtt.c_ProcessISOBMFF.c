
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;


struct TYPE_21__ {int p_child; } ;
typedef TYPE_2__ webvtt_region_t ;
typedef int webvtt_dom_node_t ;
struct TYPE_19__ {int psz_region; } ;
struct TYPE_22__ {char* psz_id; int * p_parent; TYPE_13__ settings; } ;
typedef TYPE_3__ webvtt_dom_cue_t ;
typedef int vlc_tick_t ;
typedef int uint8_t ;
struct TYPE_23__ {scalar_t__ i_type; size_t i_payload; int const* p_payload; } ;
typedef TYPE_4__ mp4_box_iterator_t ;
struct TYPE_24__ {TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_25__ {TYPE_1__* p_root; } ;
typedef TYPE_6__ decoder_sys_t ;
struct TYPE_20__ {int p_child; } ;





 scalar_t__ ATOM_vttc ;
 scalar_t__ ATOM_vttx ;
 int ProcessCue (TYPE_5__*,char*,TYPE_3__*) ;
 int assert (int ) ;
 int free (char*) ;
 int mp4_box_iterator_Init (TYPE_4__*,int const*,size_t) ;
 scalar_t__ mp4_box_iterator_Next (TYPE_4__*) ;
 void* strndup (char*,size_t) ;
 int webvtt_cue_settings_Parse (TYPE_13__*,char*) ;
 TYPE_3__* webvtt_dom_cue_New (int ,int ) ;
 int webvtt_domnode_AppendLast (int *,TYPE_3__*) ;
 int webvtt_region_AddCue (TYPE_2__*,TYPE_3__*) ;
 TYPE_2__* webvtt_region_GetByID (TYPE_6__*,int ) ;

__attribute__((used)) static int ProcessISOBMFF( decoder_t *p_dec,
                           const uint8_t *p_buffer, size_t i_buffer,
                           vlc_tick_t i_start, vlc_tick_t i_stop )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    mp4_box_iterator_t it;
    mp4_box_iterator_Init( &it, p_buffer, i_buffer );
    while( mp4_box_iterator_Next( &it ) )
    {
        if( it.i_type == ATOM_vttc || it.i_type == ATOM_vttx )
        {
            webvtt_dom_cue_t *p_cue = webvtt_dom_cue_New( i_start, i_stop );
            if( !p_cue )
                continue;

            mp4_box_iterator_t vtcc;
            mp4_box_iterator_Init( &vtcc, it.p_payload, it.i_payload );
            while( mp4_box_iterator_Next( &vtcc ) )
            {
                char *psz = ((void*)0);
                switch( vtcc.i_type )
                {
                    case 130:
                        free( p_cue->psz_id );
                        p_cue->psz_id = strndup( (char *) vtcc.p_payload, vtcc.i_payload );
                        break;
                    case 128:
                    {
                        psz = strndup( (char *) vtcc.p_payload, vtcc.i_payload );
                        if( psz )
                            webvtt_cue_settings_Parse( &p_cue->settings, psz );
                    } break;
                    case 129:
                    {
                        psz = strndup( (char *) vtcc.p_payload, vtcc.i_payload );
                        if( psz )
                            ProcessCue( p_dec, psz, p_cue );
                    } break;
                }
                free( psz );
            }

            webvtt_region_t *p_region = webvtt_region_GetByID( p_sys,
                                                               p_cue->settings.psz_region );
            if( p_region )
            {
                webvtt_region_AddCue( p_region, p_cue );
                assert( p_region->p_child );
            }
            else
            {
                webvtt_domnode_AppendLast( &p_sys->p_root->p_child, p_cue );
                p_cue->p_parent = (webvtt_dom_node_t *) p_sys->p_root;
            }
        }
    }
    return 0;
}
