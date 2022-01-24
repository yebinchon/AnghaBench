#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int n_keys; TYPE_2__** keys; } ;
typedef  TYPE_1__ DnsQuestion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (char*,char const*) ; 
 char* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(DnsQuestion *q) {
        const char *name;
        size_t i;
        int r;

        if (!q)
                return 0;

        if (q->n_keys <= 0)
                return 0;

        if (q->n_keys > 65535)
                return 0;

        name = FUNC2(q->keys[0]);
        if (!name)
                return 0;

        /* Check that all keys in this question bear the same name */
        for (i = 0; i < q->n_keys; i++) {
                FUNC0(q->keys[i]);

                if (i > 0) {
                        r = FUNC1(FUNC2(q->keys[i]), name);
                        if (r <= 0)
                                return r;
                }

                if (!FUNC3(q->keys[i]->type))
                        return 0;
        }

        return 1;
}