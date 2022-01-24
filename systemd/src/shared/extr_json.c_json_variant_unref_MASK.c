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
struct TYPE_7__ {scalar_t__ n_ref; struct TYPE_7__* parent; scalar_t__ is_embedded; } ;
typedef  TYPE_1__ JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

JsonVariant *FUNC4(JsonVariant *v) {
        if (!v)
                return NULL;
        if (!FUNC3(v))
                return NULL;

        if (v->is_embedded)
                FUNC4(v->parent);
        else {
                FUNC0(v->n_ref > 0);
                v->n_ref--;

                if (v->n_ref == 0) {
                        FUNC2(v);
                        FUNC1(v);
                }
        }

        return NULL;
}