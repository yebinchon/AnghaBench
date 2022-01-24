#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ n_ref; struct TYPE_5__* parent; scalar_t__ is_embedded; } ;
typedef  TYPE_1__ JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

JsonVariant *FUNC2(JsonVariant *v) {
        if (!v)
                return NULL;
        if (!FUNC1(v))
                return v;

        if (v->is_embedded)
                FUNC2(v->parent); /* ref the compounding variant instead */
        else {
                FUNC0(v->n_ref > 0);
                v->n_ref++;
        }

        return v;
}