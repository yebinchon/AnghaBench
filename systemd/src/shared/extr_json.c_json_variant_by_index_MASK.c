#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t n_elements; struct TYPE_9__* reference; scalar_t__ is_reference; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSON_VARIANT_ARRAY ; 
 TYPE_1__* JSON_VARIANT_MAGIC_EMPTY_ARRAY ; 
 TYPE_1__* JSON_VARIANT_MAGIC_EMPTY_OBJECT ; 
 int /*<<< orphan*/  JSON_VARIANT_OBJECT ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

JsonVariant *FUNC4(JsonVariant *v, size_t idx) {
        if (!v)
                return NULL;
        if (v == JSON_VARIANT_MAGIC_EMPTY_ARRAY ||
            v == JSON_VARIANT_MAGIC_EMPTY_OBJECT)
                return NULL;
        if (!FUNC2(v))
                goto mismatch;
        if (!FUNC0(v->type, JSON_VARIANT_ARRAY, JSON_VARIANT_OBJECT))
                goto mismatch;
        if (v->is_reference)
                return FUNC4(v->reference, idx);
        if (idx >= v->n_elements)
                return NULL;

        return FUNC1(v + 1 + idx);

mismatch:
        FUNC3("Element in non-array/non-object JSON variant requested by index, returning NULL.");
        return NULL;
}