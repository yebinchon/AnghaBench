
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct test_ctx {size_t test_idx; int b_done; int lock; int cond; } ;
struct TYPE_5__ {scalar_t__ i_chroma; } ;
struct TYPE_6__ {int date; TYPE_1__ format; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_7__ {int b_use_pos; int f_pos; int i_add_video_track_at; int i_time; scalar_t__ b_expected_success; } ;


 int MOCK_DURATION ;
 scalar_t__ VLC_CODEC_ARGB ;
 int VLC_TICK_0 ;
 int VLC_TICK_INVALID ;
 int assert (int) ;
 TYPE_4__* test_params ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void thumbnailer_callback( void* data, picture_t* thumbnail )
{
    struct test_ctx* p_ctx = data;
    vlc_mutex_lock( &p_ctx->lock );

    if ( thumbnail != ((void*)0) )
    {
        assert( test_params[p_ctx->test_idx].b_expected_success &&
                "Expected failure but got a thumbnail" );
        assert( thumbnail->format.i_chroma == VLC_CODEC_ARGB );
    }
    else
        assert( !test_params[p_ctx->test_idx].b_expected_success &&
                "Expected a thumbnail but got a failure" );

    p_ctx->b_done = 1;
    vlc_cond_signal( &p_ctx->cond );
    vlc_mutex_unlock( &p_ctx->lock );
}
