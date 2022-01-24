#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int i_buffer; scalar_t__ p_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline uint16_t FUNC2 (const block_t *block)
{
    FUNC1 (block->i_buffer >= 4);
    return FUNC0 (block->p_buffer + 2);
}