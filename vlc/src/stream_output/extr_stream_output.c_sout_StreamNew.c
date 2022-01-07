
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {char* psz_name; int pace_nocontrol; int * p_cfg; int p_module; int * p_sys; int * pf_control; int * pf_flush; struct TYPE_11__* p_next; TYPE_2__* p_sout; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_12__ {int i_out_pace_nocontrol; } ;
typedef TYPE_2__ sout_instance_t ;
typedef int config_chain_t ;


 int assert (char*) ;
 int module_need (TYPE_1__*,char*,char*,int) ;
 int msg_Dbg (TYPE_2__*,char*,char*) ;
 int sout_StreamDelete (TYPE_1__*) ;
 TYPE_1__* vlc_custom_create (TYPE_2__*,int,char*) ;

__attribute__((used)) static sout_stream_t *sout_StreamNew( sout_instance_t *p_sout, char *psz_name,
                               config_chain_t *p_cfg, sout_stream_t *p_next)
{
    sout_stream_t *p_stream;

    assert(psz_name);

    p_stream = vlc_custom_create( p_sout, sizeof( *p_stream ), "stream out" );
    if( !p_stream )
        return ((void*)0);

    p_stream->p_sout = p_sout;
    p_stream->psz_name = psz_name;
    p_stream->p_cfg = p_cfg;
    p_stream->p_next = p_next;
    p_stream->pf_flush = ((void*)0);
    p_stream->pf_control = ((void*)0);
    p_stream->pace_nocontrol = 0;
    p_stream->p_sys = ((void*)0);

    msg_Dbg( p_sout, "stream=`%s'", p_stream->psz_name );

    p_stream->p_module =
        module_need( p_stream, "sout stream", p_stream->psz_name, 1 );

    if( !p_stream->p_module )
    {

        p_stream->psz_name = ((void*)0);
        p_stream->p_cfg = ((void*)0);

        sout_StreamDelete( p_stream );
        return ((void*)0);
    }

    p_sout->i_out_pace_nocontrol += p_stream->pace_nocontrol;
    return p_stream;
}
