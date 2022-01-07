
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_10__ {TYPE_3__** pp_elems; } ;
struct TYPE_8__ {int closed; int live_thread; scalar_t__ live; int dl_thread; TYPE_4__ hds_streams; } ;
typedef TYPE_2__ stream_sys_t ;
struct TYPE_9__ {int dl_cond; } ;
typedef TYPE_3__ hds_stream_t ;


 int SysCleanup (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 scalar_t__ vlc_array_count (TYPE_4__*) ;
 int vlc_cond_signal (int *) ;
 int vlc_join (int ,int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    stream_t *s = (stream_t*)p_this;
    stream_sys_t *p_sys = s->p_sys;


    hds_stream_t *stream = vlc_array_count(&p_sys->hds_streams) ?
        p_sys->hds_streams.pp_elems[0] : ((void*)0);

    p_sys->closed = 1;
    if (stream)
        vlc_cond_signal( & stream->dl_cond );

    vlc_join( p_sys->dl_thread, ((void*)0) );

    if( p_sys->live )
    {
        vlc_join( p_sys->live_thread, ((void*)0) );
    }

    SysCleanup( p_sys );
    free( p_sys );
}
