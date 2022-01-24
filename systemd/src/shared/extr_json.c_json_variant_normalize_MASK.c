#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  JsonVariant ;

/* Variables and functions */
#define  JSON_VARIANT_ARRAY 135 
#define  JSON_VARIANT_BOOLEAN 134 
#define  JSON_VARIANT_INTEGER 133 
 int /*<<< orphan*/ * JSON_VARIANT_MAGIC_EMPTY_ARRAY ; 
 int /*<<< orphan*/ * JSON_VARIANT_MAGIC_EMPTY_OBJECT ; 
 int /*<<< orphan*/ * JSON_VARIANT_MAGIC_EMPTY_STRING ; 
 int /*<<< orphan*/ * JSON_VARIANT_MAGIC_FALSE ; 
 int /*<<< orphan*/ * JSON_VARIANT_MAGIC_NULL ; 
 int /*<<< orphan*/ * JSON_VARIANT_MAGIC_TRUE ; 
 int /*<<< orphan*/ * JSON_VARIANT_MAGIC_ZERO_INTEGER ; 
 int /*<<< orphan*/ * JSON_VARIANT_MAGIC_ZERO_REAL ; 
 int /*<<< orphan*/ * JSON_VARIANT_MAGIC_ZERO_UNSIGNED ; 
#define  JSON_VARIANT_NULL 132 
#define  JSON_VARIANT_OBJECT 131 
#define  JSON_VARIANT_REAL 130 
#define  JSON_VARIANT_STRING 129 
#define  JSON_VARIANT_UNSIGNED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 double FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static JsonVariant *FUNC9(JsonVariant *v) {

        /* Converts json variants to their normalized form, i.e. fully dereferenced and wherever possible converted to
         * the "magic" version if there is one */

        if (!v)
                return NULL;

        v = FUNC2(v);

        switch (FUNC7(v)) {

        case JSON_VARIANT_BOOLEAN:
                return FUNC1(v) ? JSON_VARIANT_MAGIC_TRUE : JSON_VARIANT_MAGIC_FALSE;

        case JSON_VARIANT_NULL:
                return JSON_VARIANT_MAGIC_NULL;

        case JSON_VARIANT_INTEGER:
                return FUNC4(v) == 0 ? JSON_VARIANT_MAGIC_ZERO_INTEGER : v;

        case JSON_VARIANT_UNSIGNED:
                return FUNC8(v) == 0 ? JSON_VARIANT_MAGIC_ZERO_UNSIGNED : v;

        case JSON_VARIANT_REAL:
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wfloat-equal"
                return FUNC5(v) == 0.0 ? JSON_VARIANT_MAGIC_ZERO_REAL : v;
#pragma GCC diagnostic pop

        case JSON_VARIANT_STRING:
                return FUNC0(FUNC6(v)) ? JSON_VARIANT_MAGIC_EMPTY_STRING : v;

        case JSON_VARIANT_ARRAY:
                return FUNC3(v) == 0 ? JSON_VARIANT_MAGIC_EMPTY_ARRAY : v;

        case JSON_VARIANT_OBJECT:
                return FUNC3(v) == 0 ? JSON_VARIANT_MAGIC_EMPTY_OBJECT : v;

        default:
                return v;
        }
}