#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int n_items; TYPE_1__* items; } ;
struct TYPE_4__ {void* data; } ;
typedef  TYPE_2__ Prioq ;

/* Variables and functions */

void *FUNC0(Prioq *q, unsigned idx) {
        if (!q)
                return NULL;

        if (idx >= q->n_items)
                return NULL;

        return q->items[idx].data;
}