
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_ctx {int b_done; int cond; int lock; } ;
typedef int picture_t ;


 int assert (int ) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void thumbnailer_callback_cancel( void* data, picture_t* p_thumbnail )
{
    struct test_ctx* p_ctx = data;
    assert( p_thumbnail == ((void*)0) );
    vlc_mutex_lock( &p_ctx->lock );
    p_ctx->b_done = 1;
    vlc_mutex_unlock( &p_ctx->lock );
    vlc_cond_signal( &p_ctx->cond );
}
