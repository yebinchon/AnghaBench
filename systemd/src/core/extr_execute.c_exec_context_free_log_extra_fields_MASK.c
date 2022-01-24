#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  iov_base; } ;
struct TYPE_6__ {size_t n_log_extra_fields; TYPE_2__* log_extra_fields; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 

void FUNC3(ExecContext *c) {
        size_t l;

        FUNC0(c);

        for (l = 0; l < c->n_log_extra_fields; l++)
                FUNC1(c->log_extra_fields[l].iov_base);
        c->log_extra_fields = FUNC2(c->log_extra_fields);
        c->n_log_extra_fields = 0;
}