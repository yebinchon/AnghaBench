#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct decoder_owner {int /*<<< orphan*/  lock; int /*<<< orphan*/  b_first; } ;
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_5__ {int /*<<< orphan*/  video; } ;
struct TYPE_6__ {TYPE_1__ fmt_out; } ;
typedef  TYPE_2__ decoder_t ;

/* Variables and functions */
 struct decoder_owner* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static picture_t *FUNC4( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = FUNC0( p_dec );
    /* Avoid decoding more than one frame when a thumbnail was
     * already generated */
    FUNC2( &p_owner->lock );
    if( !p_owner->b_first )
    {
        FUNC3( &p_owner->lock );
        return NULL;
    }
    FUNC3( &p_owner->lock );
    return FUNC1( &p_dec->fmt_out.video );
}