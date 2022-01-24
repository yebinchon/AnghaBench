#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ (* acquire_buffer ) (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  p_allocator; } ;
typedef  TYPE_1__ GstVlcVideoPool ;
typedef  scalar_t__ GstFlowReturn ;
typedef  int /*<<< orphan*/  GstBufferPoolAcquireParams ;
typedef  int /*<<< orphan*/  GstBufferPool ;
typedef  int /*<<< orphan*/  GstBuffer ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GST_FLOW_EOS ; 
 scalar_t__ GST_FLOW_OK ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  parent_class ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static GstFlowReturn FUNC4( GstBufferPool *p_pool,
        GstBuffer **p_buffer, GstBufferPoolAcquireParams *p_params )
{
    GstVlcVideoPool *p_vpool = FUNC1( p_pool );
    GstFlowReturn result;

    result = FUNC0( parent_class)->acquire_buffer( p_pool,
            p_buffer, p_params );

    if( result == GST_FLOW_OK &&
            !FUNC2( p_vpool->p_allocator,
                *p_buffer ))
        result = GST_FLOW_EOS;

    return result;
}