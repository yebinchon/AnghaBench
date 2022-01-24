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
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,char const* const,unsigned int) ; 

int FUNC1( input_item_t *p_item, int i_options,
                           const char *const *ppsz_options,
                           unsigned i_flags )
{
    int i_ret = VLC_SUCCESS;
    for( int i = 0; i < i_options && i_ret == VLC_SUCCESS; i++ )
        i_ret = FUNC0( p_item, ppsz_options[i], i_flags );
    return i_ret;
}