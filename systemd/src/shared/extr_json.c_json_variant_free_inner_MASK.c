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
struct TYPE_5__ {size_t n_elements; int /*<<< orphan*/  type; int /*<<< orphan*/  reference; scalar_t__ is_reference; int /*<<< orphan*/  source; } ;
typedef  TYPE_1__ JsonVariant ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSON_VARIANT_ARRAY ; 
 int /*<<< orphan*/  JSON_VARIANT_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(JsonVariant *v) {
        FUNC1(v);

        if (!FUNC3(v))
                return;

        FUNC2(v->source);

        if (v->is_reference) {
                FUNC4(v->reference);
                return;
        }

        if (FUNC0(v->type, JSON_VARIANT_ARRAY, JSON_VARIANT_OBJECT)) {
                size_t i;

                for (i = 0; i < v->n_elements; i++)
                        FUNC5(v + 1 + i);
        }
}