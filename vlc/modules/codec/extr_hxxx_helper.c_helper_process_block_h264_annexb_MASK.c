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
struct hxxx_helper {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  h264_helper_parse_nal ; 
 int /*<<< orphan*/ * FUNC0 (struct hxxx_helper*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static block_t *
FUNC1(struct hxxx_helper *hh, block_t *p_block,
                                 bool *p_config_changed)
{
    if (p_config_changed != NULL)
        return FUNC0(hh, h264_helper_parse_nal,
                                                p_block,p_config_changed);
    return p_block;
}