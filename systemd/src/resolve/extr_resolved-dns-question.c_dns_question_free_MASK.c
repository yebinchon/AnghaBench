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
struct TYPE_7__ {size_t n_keys; int /*<<< orphan*/ * keys; } ;
typedef  TYPE_1__ DnsQuestion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static DnsQuestion *FUNC3(DnsQuestion *q) {
        size_t i;

        FUNC0(q);

        for (i = 0; i < q->n_keys; i++)
                FUNC1(q->keys[i]);
        return FUNC2(q);
}