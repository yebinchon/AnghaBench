#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ type; size_t n_elements; int /*<<< orphan*/  reference; scalar_t__ is_reference; } ;
typedef  TYPE_1__ JsonVariant ;

/* Variables and functions */
 TYPE_1__* JSON_VARIANT_MAGIC_EMPTY_OBJECT ; 
 scalar_t__ JSON_VARIANT_OBJECT ; 
 int /*<<< orphan*/  JSON_VARIANT_STRING ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*) ; 

JsonVariant *FUNC8(JsonVariant *v, const char *key, JsonVariant **ret_key) {
        size_t i;

        if (!v)
                goto not_found;
        if (!key)
                goto not_found;
        if (v == JSON_VARIANT_MAGIC_EMPTY_OBJECT)
                goto not_found;
        if (!FUNC4(v))
                goto mismatch;
        if (v->type != JSON_VARIANT_OBJECT)
                goto mismatch;
        if (v->is_reference)
                return FUNC0(v->reference, key);

        for (i = 0; i < v->n_elements; i += 2) {
                JsonVariant *p;

                p = FUNC2(v + 1 + i);

                if (!FUNC3(p, JSON_VARIANT_STRING))
                        continue;

                if (FUNC7(FUNC5(p), key)) {

                        if (ret_key)
                                *ret_key = FUNC1(v + 1 + i);

                        return FUNC1(v + 1 + i + 1);
                }
        }

not_found:
        if (ret_key)
                *ret_key = NULL;

        return NULL;

mismatch:
        FUNC6("Element in non-object JSON variant requested by key, returning NULL.");
        if (ret_key)
                *ret_key = NULL;

        return NULL;
}