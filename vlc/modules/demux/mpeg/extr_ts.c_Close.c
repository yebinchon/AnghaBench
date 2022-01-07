
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_10__ {TYPE_4__* b25stream; scalar_t__ p_instance; } ;
struct TYPE_12__ {int attachments; int pids; int csa_lock; TYPE_1__ arib; int programs; scalar_t__ csa; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_13__ {int * s; } ;


 int ARRAY_RESET (int ) ;
 int ChangeKeyCallback ;
 int FreeDictAttachment ;
 int GetPID (TYPE_3__*,int ) ;
 int PIDRelease (TYPE_2__*,int ) ;
 int arib_instance_destroy (scalar_t__) ;
 int csa_Delete (scalar_t__) ;
 int free (TYPE_3__*) ;
 int ts_pid_list_Release (TYPE_2__*,int *) ;
 int var_DelCallback (TYPE_2__*,char*,int ,void*) ;
 int vlc_dictionary_clear (int *,int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_stream_Delete (TYPE_4__*) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    PIDRelease( p_demux, GetPID(p_sys, 0) );

    vlc_mutex_lock( &p_sys->csa_lock );
    if( p_sys->csa )
    {
        var_DelCallback( p_demux, "ts-csa-ck", ChangeKeyCallback, (void *)1 );
        var_DelCallback( p_demux, "ts-csa2-ck", ChangeKeyCallback, ((void*)0) );
        csa_Delete( p_sys->csa );
    }
    vlc_mutex_unlock( &p_sys->csa_lock );

    ARRAY_RESET( p_sys->programs );






    if ( p_sys->arib.b25stream )
    {
        p_sys->arib.b25stream->s = ((void*)0);
        vlc_stream_Delete( p_sys->arib.b25stream );
    }

    vlc_mutex_destroy( &p_sys->csa_lock );


    ts_pid_list_Release( p_demux, &p_sys->pids );


    vlc_dictionary_clear( &p_sys->attachments, FreeDictAttachment, ((void*)0) );

    free( p_sys );
}
