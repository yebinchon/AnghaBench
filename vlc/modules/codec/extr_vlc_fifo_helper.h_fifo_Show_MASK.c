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
struct TYPE_3__ {int /*<<< orphan*/ * p_first; } ;
typedef  TYPE_1__ fifo_t ;
typedef  int /*<<< orphan*/  fifo_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline fifo_item_t *FUNC1(fifo_t *p_fifo)
{
    fifo_item_t *b;

    FUNC0(p_fifo->p_first != NULL);
    b = p_fifo->p_first;

    return b;
}