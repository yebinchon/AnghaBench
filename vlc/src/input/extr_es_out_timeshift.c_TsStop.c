
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; TYPE_2__* p_storage_r; int thread; } ;
typedef TYPE_1__ ts_thread_t ;
typedef int ts_cmd_t ;
struct TYPE_7__ {int p_next; } ;


 int CmdClean (int *) ;
 int TsDestroy (TYPE_1__*) ;
 scalar_t__ TsPopCmdLocked (TYPE_1__*,int *,int) ;
 int TsStorageDelete (TYPE_2__*) ;
 int assert (int) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void TsStop( ts_thread_t *p_ts )
{
    vlc_cancel( p_ts->thread );
    vlc_join( p_ts->thread, ((void*)0) );

    vlc_mutex_lock( &p_ts->lock );
    for( ;; )
    {
        ts_cmd_t cmd;

        if( TsPopCmdLocked( p_ts, &cmd, 1 ) )
            break;

        CmdClean( &cmd );
    }
    assert( !p_ts->p_storage_r || !p_ts->p_storage_r->p_next );
    if( p_ts->p_storage_r )
        TsStorageDelete( p_ts->p_storage_r );
    vlc_mutex_unlock( &p_ts->lock );

    TsDestroy( p_ts );
}
