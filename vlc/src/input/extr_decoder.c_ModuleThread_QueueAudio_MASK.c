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
struct decoder_owner {int dummy; } ;
typedef  int /*<<< orphan*/  decoder_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int FUNC0 (struct decoder_owner*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct decoder_owner*,int) ; 
 int VLC_SUCCESS ; 
 struct decoder_owner* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( decoder_t *p_dec, block_t *p_aout_buf )
{
    struct decoder_owner *p_owner = FUNC2( p_dec );

    int success = FUNC0( p_owner, p_aout_buf );

    FUNC1( p_owner, success != VLC_SUCCESS );
}