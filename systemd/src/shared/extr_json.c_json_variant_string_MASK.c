#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; char const* string; struct TYPE_6__* reference; scalar_t__ is_reference; } ;
typedef  TYPE_1__ JsonVariant ;

/* Variables and functions */
 TYPE_1__* JSON_VARIANT_MAGIC_EMPTY_STRING ; 
 scalar_t__ JSON_VARIANT_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

const char *FUNC4(JsonVariant *v) {
        if (!v)
                return NULL;
        if (v == JSON_VARIANT_MAGIC_EMPTY_STRING)
                return "";
        if (FUNC2(v))
                goto mismatch;
        if (FUNC1(v)) {
                uintptr_t p = (uintptr_t) v;

                FUNC0((p & 1) != 0);
                return (const char*) (p ^ 1U);
        }

        if (v->is_reference)
                return FUNC4(v->reference);
        if (v->type != JSON_VARIANT_STRING)
                goto mismatch;

        return v->string;

mismatch:
        FUNC3("Non-string JSON variant requested as string, returning NULL.");
        return NULL;
}