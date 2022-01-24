#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  decoder_t ;
struct TYPE_4__ {int /*<<< orphan*/ * p_dec; int /*<<< orphan*/  p_allocator; } ;
typedef  TYPE_1__ GstVlcVideoPool ;
typedef  int /*<<< orphan*/  GstAllocator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GST_TYPE_VLC_VIDEO_POOL ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

GstVlcVideoPool* FUNC4(
    GstAllocator *p_allocator, decoder_t *p_dec )
{
    GstVlcVideoPool *p_pool;

    if( !FUNC0( p_allocator ))
    {
        FUNC3( p_dec, "unspported allocator for pool" );
        return NULL;
    }

    p_pool = FUNC1( GST_TYPE_VLC_VIDEO_POOL, NULL );
    p_pool->p_allocator = FUNC2( p_allocator );
    p_pool->p_dec = p_dec;

    return p_pool;
}