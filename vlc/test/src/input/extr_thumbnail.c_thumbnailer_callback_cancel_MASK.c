#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct test_ctx {int b_done; int /*<<< orphan*/  cond; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  picture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( void* data, picture_t* p_thumbnail )
{
    struct test_ctx* p_ctx = data;
    FUNC0( p_thumbnail == NULL );
    FUNC2( &p_ctx->lock );
    p_ctx->b_done = true;
    FUNC3( &p_ctx->lock );
    FUNC1( &p_ctx->cond );
}