#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  encoder_t ;
struct TYPE_13__ {TYPE_5__* p_context; } ;
typedef  TYPE_2__ encoder_sys_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_12__ {int den; } ;
struct TYPE_15__ {TYPE_1__ time_base; } ;
struct TYPE_14__ {int duration; scalar_t__ size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_5__*,TYPE_3__*) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,int,TYPE_5__*) ; 

__attribute__((used)) static block_t *FUNC8( encoder_t *p_enc, encoder_sys_t *p_sys, AVFrame *frame )
{
    AVPacket av_pkt;
    av_pkt.data = NULL;
    av_pkt.size = 0;

    FUNC1( &av_pkt );

    int ret = FUNC4( p_sys->p_context, frame );
    if( frame && ret != 0 && ret != FUNC0(EAGAIN) )
    {
        FUNC5( p_enc, "cannot send one frame to encoder %d", ret );
        return NULL;
    }
    ret = FUNC3( p_sys->p_context, &av_pkt );
    if( ret != 0 && ret != FUNC0(EAGAIN) )
    {
        FUNC5( p_enc, "cannot encode one frame" );
        return NULL;
    }

    block_t *p_block = FUNC7( &av_pkt,
            av_pkt.duration / p_sys->p_context->time_base.den, p_sys->p_context );
    if( FUNC6(p_block == NULL) )
    {
        FUNC2( &av_pkt );
        return NULL;
    }
    return p_block;
}