#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ n_keys; scalar_t__ n_allocated; int /*<<< orphan*/ * keys; } ;
typedef  TYPE_1__ DnsResourceKey ;
typedef  TYPE_1__ DnsQuestion ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(DnsQuestion *q, DnsResourceKey *key) {
        /* Insert without checking for duplicates. */

        FUNC0(key);
        FUNC0(q);

        if (q->n_keys >= q->n_allocated)
                return -ENOSPC;

        q->keys[q->n_keys++] = FUNC1(key);
        return 0;
}