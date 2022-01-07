
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int p_storage_r; } ;
typedef TYPE_1__ ts_thread_t ;


 int TsStorageIsEmpty (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static bool TsHasCmd( ts_thread_t *p_ts )
{
    bool b_cmd;

    vlc_mutex_lock( &p_ts->lock );
    b_cmd = !TsStorageIsEmpty( p_ts->p_storage_r );
    vlc_mutex_unlock( &p_ts->lock );

    return b_cmd;
}
