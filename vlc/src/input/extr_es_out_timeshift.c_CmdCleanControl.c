
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int p_fmt; } ;
struct TYPE_12__ {int p_evt; } ;
struct TYPE_11__ {int p_epg; } ;
struct TYPE_10__ {int p_meta; } ;
struct TYPE_14__ {TYPE_4__ es_fmt; TYPE_3__ int_epg_evt; TYPE_2__ int_epg; TYPE_1__ int_meta; } ;
struct TYPE_15__ {int i_query; TYPE_5__ u; } ;
struct TYPE_16__ {TYPE_6__ control; } ;
struct TYPE_17__ {TYPE_7__ u; } ;
typedef TYPE_8__ ts_cmd_t ;







 int es_format_Clean (int ) ;
 int free (int ) ;
 int vlc_epg_Delete (int ) ;
 int vlc_epg_event_Delete (int ) ;
 int vlc_meta_Delete (int ) ;

__attribute__((used)) static void CmdCleanControl( ts_cmd_t *p_cmd )
{
    switch( p_cmd->u.control.i_query )
    {
    case 129:
    case 128:
        if( p_cmd->u.control.u.int_meta.p_meta )
            vlc_meta_Delete( p_cmd->u.control.u.int_meta.p_meta );
        break;
    case 131:
        if( p_cmd->u.control.u.int_epg.p_epg )
            vlc_epg_Delete( p_cmd->u.control.u.int_epg.p_epg );
        break;
    case 130:
        if( p_cmd->u.control.u.int_epg_evt.p_evt )
            vlc_epg_event_Delete( p_cmd->u.control.u.int_epg_evt.p_evt );
        break;
    case 132:
        if( p_cmd->u.control.u.es_fmt.p_fmt )
        {
            es_format_Clean( p_cmd->u.control.u.es_fmt.p_fmt );
            free( p_cmd->u.control.u.es_fmt.p_fmt );
        }
        break;
    }
}
