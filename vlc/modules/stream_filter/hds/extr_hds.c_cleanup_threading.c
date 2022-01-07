
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int abst_lock; int dl_cond; int dl_lock; } ;
typedef TYPE_1__ hds_stream_t ;


 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void cleanup_threading( hds_stream_t *stream )
{
    vlc_mutex_destroy( &stream->dl_lock );
    vlc_cond_destroy( &stream->dl_cond );
    vlc_mutex_destroy( &stream->abst_lock );
}
