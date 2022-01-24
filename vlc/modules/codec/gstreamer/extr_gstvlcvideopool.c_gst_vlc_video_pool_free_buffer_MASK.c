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
struct TYPE_5__ {int /*<<< orphan*/  (* free_buffer ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  p_dec; int /*<<< orphan*/  p_allocator; } ;
typedef  TYPE_1__ GstVlcVideoPool ;
typedef  int /*<<< orphan*/  GstBufferPool ;
typedef  int /*<<< orphan*/  GstBuffer ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  parent_class ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5( GstBufferPool *p_pool,
        GstBuffer *p_buffer )
{
    GstVlcVideoPool* p_vpool = FUNC1( p_pool );

    FUNC2( p_vpool->p_allocator, p_buffer );

    FUNC3( p_vpool->p_dec, "freed buffer %p", p_buffer );

    FUNC0( parent_class )->free_buffer( p_pool, p_buffer );

    return;
}