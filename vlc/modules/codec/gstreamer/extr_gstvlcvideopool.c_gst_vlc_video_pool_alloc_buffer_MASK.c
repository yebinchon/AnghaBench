#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  stride; int /*<<< orphan*/  offset; } ;
struct TYPE_8__ {int /*<<< orphan*/  p_dec; scalar_t__ b_add_metavideo; int /*<<< orphan*/  p_allocator; TYPE_2__ info; } ;
typedef  TYPE_1__ GstVlcVideoPool ;
typedef  TYPE_2__ GstVideoInfo ;
typedef  int /*<<< orphan*/  GstFlowReturn ;
typedef  int /*<<< orphan*/  GstBufferPoolAcquireParams ;
typedef  int /*<<< orphan*/  GstBufferPool ;
typedef  int /*<<< orphan*/  GstBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  GST_FLOW_EOS ; 
 int /*<<< orphan*/  GST_FLOW_OK ; 
 int /*<<< orphan*/  GST_VIDEO_FRAME_FLAG_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static GstFlowReturn FUNC11( GstBufferPool *p_pool,
        GstBuffer **p_buffer, GstBufferPoolAcquireParams *p_params)
{
    FUNC5( p_params );

    GstVlcVideoPool *p_vpool = FUNC4( p_pool );
    GstVideoInfo *p_info = &p_vpool->info;

    *p_buffer = FUNC7( );

    if( !FUNC8( p_vpool->p_allocator,
                *p_buffer ))
    {
        FUNC10( p_vpool->p_dec, "buffer allocation failed" );
        return GST_FLOW_EOS;
    }

    if( p_vpool->b_add_metavideo )
    {
        FUNC9( p_vpool->p_dec, "meta video enabled" );
        FUNC6( *p_buffer, GST_VIDEO_FRAME_FLAG_NONE,
                FUNC0( p_info ), FUNC3( p_info ),
                FUNC1( p_info ),
                FUNC2( p_info ),
                p_info->offset, p_info->stride );
    }

    FUNC9( p_vpool->p_dec, "allocated buffer %p", *p_buffer );

    return GST_FLOW_OK;
}