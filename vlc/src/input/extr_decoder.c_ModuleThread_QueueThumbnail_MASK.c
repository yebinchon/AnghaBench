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
struct decoder_owner {int b_first; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 struct decoder_owner* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct decoder_owner*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_thumbnail_ready ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5( decoder_t *p_dec, picture_t *p_pic )
{
    struct decoder_owner *p_owner = FUNC0( p_dec );
    bool b_first;

    FUNC3( &p_owner->lock );
    b_first = p_owner->b_first;
    p_owner->b_first = false;
    FUNC4( &p_owner->lock );

    if( b_first )
        FUNC1(p_owner, on_thumbnail_ready, p_pic);
    FUNC2( p_pic );

}