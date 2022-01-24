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
struct decoder_owner {int /*<<< orphan*/  out_pool; int /*<<< orphan*/  p_vout; } ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct decoder_owner* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static picture_t *FUNC4( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = FUNC1( p_dec );
    FUNC0( p_owner->p_vout );

    picture_t *pic = FUNC3( p_owner->out_pool );
    if (pic)
        FUNC2( pic );
    return pic;
}