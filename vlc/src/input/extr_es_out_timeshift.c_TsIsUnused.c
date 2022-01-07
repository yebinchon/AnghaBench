
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rate; scalar_t__ rate_source; int lock; int p_storage_r; int b_paused; } ;
typedef TYPE_1__ ts_thread_t ;


 scalar_t__ TsStorageIsEmpty (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static bool TsIsUnused( ts_thread_t *p_ts )
{
    bool b_unused;

    vlc_mutex_lock( &p_ts->lock );
    b_unused = !p_ts->b_paused &&
               p_ts->rate == p_ts->rate_source &&
               TsStorageIsEmpty( p_ts->p_storage_r );
    vlc_mutex_unlock( &p_ts->lock );

    return b_unused;
}
