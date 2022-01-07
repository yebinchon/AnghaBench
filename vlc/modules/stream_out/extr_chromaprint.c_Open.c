
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {int pf_send; int pf_del; int pf_add; TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_10__ {int b_finished; int b_done; int p_chromaprint_ctx; int p_data; int i_duration; scalar_t__ i_total_samples; int * id; } ;
typedef TYPE_2__ sout_stream_sys_t ;


 int Add ;
 int CHROMAPRINT_ALGORITHM_DEFAULT ;
 int Del ;
 int Send ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_ENOVAR ;
 int VLC_SUCCESS ;
 int chromaprint_get_version () ;
 int chromaprint_new (int ) ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int msg_Dbg (TYPE_1__*,char*,int ) ;
 int msg_Err (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int) ;
 int var_InheritAddress (TYPE_1__*,char*) ;
 int var_InheritInteger (TYPE_1__*,char*) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys;

    p_stream->p_sys = p_sys = malloc(sizeof(sout_stream_sys_t));
    if ( unlikely( ! p_sys ) ) return VLC_ENOMEM;
    p_sys->id = ((void*)0);
    p_sys->b_finished = 0;
    p_sys->b_done = 0;
    p_sys->i_total_samples = 0;
    p_sys->i_duration = var_InheritInteger( p_stream, "duration" );
    p_sys->p_data = var_InheritAddress( p_stream, "fingerprint-data" );
    if ( !p_sys->p_data )
    {
        msg_Err( p_stream, "Fingerprint data holder not set" );
        free( p_sys );
        return VLC_ENOVAR;
    }
    msg_Dbg( p_stream, "chromaprint version %s", chromaprint_get_version() );
    p_sys->p_chromaprint_ctx = chromaprint_new( CHROMAPRINT_ALGORITHM_DEFAULT );
    if ( ! p_sys->p_chromaprint_ctx )
    {
        msg_Err( p_stream, "Can't create chromaprint context" );
        free( p_sys );
        return VLC_EGENERIC;
    }
    p_stream->pf_add = Add;
    p_stream->pf_del = Del;
    p_stream->pf_send = Send;
    return VLC_SUCCESS;
}
