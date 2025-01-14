
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_22__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_26__ {scalar_t__ psz_name; } ;
struct TYPE_24__ {scalar_t__ psz_name; } ;
struct TYPE_27__ {TYPE_2__ future; TYPE_1__ current; scalar_t__ psz_channel_number; scalar_t__ psz_channel_call_letter; scalar_t__ psz_channel_name; } ;
typedef TYPE_3__ xds_meta_t ;
struct TYPE_28__ {scalar_t__ i_event; } ;
typedef TYPE_4__ vlc_meta_t ;
typedef TYPE_4__ vlc_epg_t ;
struct TYPE_29__ {int psz_name; } ;
typedef TYPE_6__ vlc_epg_event_t ;
typedef int uint8_t ;
struct TYPE_30__ {int out; TYPE_8__* p_sys; } ;
typedef TYPE_7__ demux_t ;
struct TYPE_25__ {int b_meta_changed; TYPE_3__ meta; } ;
struct TYPE_31__ {TYPE_22__ xds; } ;
typedef TYPE_8__ demux_sys_t ;


 int ES_OUT_SET_GROUP_EPG ;
 int ES_OUT_SET_GROUP_META ;
 int TY_ES_GROUP ;
 int XdsParse (TYPE_22__*,int ,int ) ;
 int es_out_Control (int ,int ,int ,TYPE_4__*) ;
 int strdup (scalar_t__) ;
 int vlc_epg_AddEvent (TYPE_4__*,TYPE_6__*) ;
 int vlc_epg_Delete (TYPE_4__*) ;
 TYPE_4__* vlc_epg_New (int ,int ) ;
 int vlc_epg_SetCurrent (TYPE_4__*,int ) ;
 int vlc_epg_event_Delete (TYPE_6__*) ;
 TYPE_6__* vlc_epg_event_New (int ,int ,int ) ;
 int vlc_meta_AddExtra (TYPE_4__*,char*,scalar_t__) ;
 int vlc_meta_Delete (TYPE_4__*) ;
 TYPE_4__* vlc_meta_New () ;
 int vlc_meta_SetPublisher (TYPE_4__*,scalar_t__) ;
 int vlc_meta_SetTitle (TYPE_4__*,scalar_t__) ;

__attribute__((used)) static void DemuxDecodeXds( demux_t *p_demux, uint8_t d1, uint8_t d2 )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    XdsParse( &p_sys->xds, d1, d2 );
    if( p_sys->xds.b_meta_changed )
    {
        xds_meta_t *m = &p_sys->xds.meta;
        vlc_meta_t *p_meta;


        p_meta = vlc_meta_New();
        if( m->psz_channel_name )
            vlc_meta_SetPublisher( p_meta, m->psz_channel_name );
        if( m->psz_channel_call_letter )
            vlc_meta_SetTitle( p_meta, m->psz_channel_call_letter );
        if( m->psz_channel_number )
            vlc_meta_AddExtra( p_meta, "Channel number", m->psz_channel_number );
        es_out_Control( p_demux->out, ES_OUT_SET_GROUP_META, TY_ES_GROUP, p_meta );
        vlc_meta_Delete( p_meta );


        if( m->current.psz_name )
        {
            vlc_epg_t *p_epg = vlc_epg_New( TY_ES_GROUP, TY_ES_GROUP );
            if ( p_epg )
            {
                vlc_epg_event_t *p_evt = vlc_epg_event_New( 0, 0, 0 );
                if ( p_evt )
                {
                    if( m->current.psz_name )
                        p_evt->psz_name = strdup( m->current.psz_name );
                    if( !vlc_epg_AddEvent( p_epg, p_evt ) )
                        vlc_epg_event_Delete( p_evt );
                }


                vlc_epg_SetCurrent( p_epg, 0 );

                if( m->future.psz_name )
                {
                }
                if( p_epg->i_event > 0 )
                    es_out_Control( p_demux->out, ES_OUT_SET_GROUP_EPG,
                                    TY_ES_GROUP, p_epg );
                vlc_epg_Delete( p_epg );
            }
        }
    }
    p_sys->xds.b_meta_changed = 0;
}
