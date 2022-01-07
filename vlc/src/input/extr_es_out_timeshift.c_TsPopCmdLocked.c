
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_storage_r; int lock; } ;
typedef TYPE_1__ ts_thread_t ;
struct TYPE_8__ {struct TYPE_8__* p_next; } ;
typedef TYPE_2__ ts_storage_t ;
typedef int ts_cmd_t ;


 int TsStorageDelete (TYPE_2__*) ;
 scalar_t__ TsStorageIsEmpty (TYPE_2__*) ;
 int TsStoragePopCmd (TYPE_2__*,int *,int) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int vlc_mutex_assert (int *) ;

__attribute__((used)) static int TsPopCmdLocked( ts_thread_t *p_ts, ts_cmd_t *p_cmd, bool b_flush )
{
    vlc_mutex_assert( &p_ts->lock );

    if( TsStorageIsEmpty( p_ts->p_storage_r ) )
        return VLC_EGENERIC;

    TsStoragePopCmd( p_ts->p_storage_r, p_cmd, b_flush );

    while( TsStorageIsEmpty( p_ts->p_storage_r ) )
    {
        ts_storage_t *p_next = p_ts->p_storage_r->p_next;
        if( !p_next )
            break;

        TsStorageDelete( p_ts->p_storage_r );
        p_ts->p_storage_r = p_next;
    }

    return VLC_SUCCESS;
}
