#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_thumbnailer_t ;
typedef  int /*<<< orphan*/  vlc_thumbnailer_request_t ;
struct test_ctx {int b_done; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; } ;
struct TYPE_3__ {int /*<<< orphan*/  p_libvlc_int; } ;
typedef  TYPE_1__ libvlc_instance_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_THUMBNAILER_SEEK_PRECISE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thumbnailer_callback_cancel ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct test_ctx*) ; 
 scalar_t__ FUNC14 () ; 

__attribute__((used)) static void FUNC15( libvlc_instance_t* p_vlc )
{
    vlc_thumbnailer_t* p_thumbnailer = FUNC11(
                FUNC0( p_vlc->p_libvlc_int ) );
    FUNC2( p_thumbnailer != NULL );

    struct test_ctx ctx;
    FUNC5( &ctx.cond );
    FUNC7( &ctx.lock );

    const char* psz_mrl = "mock://video_track_count=1;audio_track_count=1";
    input_item_t* p_item = FUNC3( psz_mrl, "mock item" );
    FUNC2( p_item != NULL );

    FUNC8( &ctx.lock );
    int res = 0;
    vlc_thumbnailer_request_t* p_req = FUNC13( p_thumbnailer,
        FUNC1( 1 ), VLC_THUMBNAILER_SEEK_PRECISE, p_item,
        VLC_TICK_INVALID, thumbnailer_callback_cancel, &ctx );
    FUNC10( p_thumbnailer, p_req );
    while ( ctx.b_done == false )
    {
        vlc_tick_t timeout = FUNC14() + FUNC1( 1 );
        res = FUNC6( &ctx.cond, &ctx.lock, timeout );
        FUNC2( res != ETIMEDOUT );
    }
    FUNC9( &ctx.lock );

    FUNC4( p_item );

    FUNC12( p_thumbnailer );
}