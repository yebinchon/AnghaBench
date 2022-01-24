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
struct hxxx_helper {int /*<<< orphan*/  i_nal_length_size; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct hxxx_helper*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static block_t *
FUNC2(struct hxxx_helper *hh, block_t *p_block,
                                      bool *p_config_changed)
{
    p_block = FUNC0(hh, p_block, p_config_changed);
    return p_block ? FUNC1(p_block, hh->i_nal_length_size) : NULL;
}