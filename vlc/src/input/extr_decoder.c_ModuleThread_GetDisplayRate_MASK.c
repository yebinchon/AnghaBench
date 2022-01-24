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
struct decoder_owner {float output_rate; int /*<<< orphan*/  lock; int /*<<< orphan*/  p_clock; } ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 struct decoder_owner* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static float FUNC3( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = FUNC0( p_dec );

    if( !p_owner->p_clock )
        return 1.f;
    FUNC1( &p_owner->lock );
    float rate = p_owner->output_rate;
    FUNC2( &p_owner->lock );
    return rate;
}