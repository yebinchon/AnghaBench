
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int p_cfg; int psz_name; int * p_module; scalar_t__ pace_nocontrol; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_9__ {int i_out_pace_nocontrol; } ;
typedef TYPE_2__ sout_instance_t ;


 int FREENULL (int ) ;
 int config_ChainDestroy (int ) ;
 int module_unneed (TYPE_1__*,int *) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 int vlc_object_delete (TYPE_1__*) ;
 scalar_t__ vlc_object_parent (TYPE_1__*) ;

__attribute__((used)) static void sout_StreamDelete( sout_stream_t *p_stream )
{
    sout_instance_t *p_sout = (sout_instance_t *)vlc_object_parent(p_stream);

    msg_Dbg( p_stream, "destroying chain... (name=%s)", p_stream->psz_name );

    p_sout->i_out_pace_nocontrol -= p_stream->pace_nocontrol;

    if( p_stream->p_module != ((void*)0) )
        module_unneed( p_stream, p_stream->p_module );

    FREENULL( p_stream->psz_name );

    config_ChainDestroy( p_stream->p_cfg );

    msg_Dbg( p_stream, "destroying chain done" );
    vlc_object_delete(p_stream);
}
