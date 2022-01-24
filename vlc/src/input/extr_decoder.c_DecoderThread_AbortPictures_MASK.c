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
struct decoder_owner {int /*<<< orphan*/  lock; scalar_t__ out_pool; } ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 struct decoder_owner* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( decoder_t *p_dec, bool b_abort )
{
    struct decoder_owner *p_owner = FUNC0( p_dec );

    FUNC2( &p_owner->lock ); // called in DecoderThread
    if (p_owner->out_pool)
        FUNC1( p_owner->out_pool, b_abort );
    FUNC3( &p_owner->lock );
}