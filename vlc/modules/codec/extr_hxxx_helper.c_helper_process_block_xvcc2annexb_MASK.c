#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hxxx_helper {int /*<<< orphan*/  i_nal_length_size; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hxxx_helper*) ; 
 TYPE_1__* FUNC3 (struct hxxx_helper*,TYPE_1__*,int*) ; 

__attribute__((used)) static block_t *
FUNC4(struct hxxx_helper *hh, block_t *p_block,
                                 bool *p_config_changed)
{
    FUNC0(FUNC2(hh));
    FUNC1(p_block->p_buffer, p_block->i_buffer,
                       hh->i_nal_length_size);
    return FUNC3(hh, p_block, p_config_changed);
}