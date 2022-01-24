#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * p_description; int /*<<< orphan*/  fmt_out; } ;
struct decoder_owner {int /*<<< orphan*/  b_fmt_description; int /*<<< orphan*/ * p_description; int /*<<< orphan*/  fmt; int /*<<< orphan*/  lock; TYPE_1__ dec; } ;
typedef  TYPE_1__ decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  memory_order_release ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5( struct decoder_owner *p_owner )
{
    decoder_t *p_dec = &p_owner->dec;

    FUNC4( &p_owner->lock );

    FUNC1( &p_owner->fmt );
    FUNC2( &p_owner->fmt, &p_dec->fmt_out );

    /* Move p_description */
    if( p_dec->p_description != NULL )
    {
        if( p_owner->p_description != NULL )
            FUNC3( p_owner->p_description );
        p_owner->p_description = p_dec->p_description;
        p_dec->p_description = NULL;
    }

    FUNC0( &p_owner->b_fmt_description, true,
                           memory_order_release );
}