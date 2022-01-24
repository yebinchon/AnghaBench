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
 scalar_t__ JSON_VARIANT_ARRAY ; 
 int /*<<< orphan*/  JSON_VARIANT_INTEGER ; 
 scalar_t__ JSON_VARIANT_NULL ; 
 scalar_t__ JSON_VARIANT_OBJECT ; 
 scalar_t__ JSON_VARIANT_STRING ; 
 scalar_t__ JSON_VARIANT_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC10(JsonVariant *v) {
        JsonVariant *p, *q;
        unsigned i;

        /* 3 keys + 3 values */
        FUNC0(FUNC3(v) == 6);

        /* has k */
        p = FUNC2(v, "k");
        FUNC0(p && FUNC7(p) == JSON_VARIANT_STRING);

        /* k equals v */
        FUNC0(FUNC9(FUNC6(p), "v"));

        /* has foo */
        p = FUNC2(v, "foo");
        FUNC0(p && FUNC7(p) == JSON_VARIANT_ARRAY && FUNC3(p) == 3);

        /* check  foo[0] = 1, foo[1] = 2, foo[2] = 3 */
        for (i = 0; i < 3; ++i) {
                q = FUNC1(p, i);
                FUNC0(q && FUNC7(q) == JSON_VARIANT_UNSIGNED && FUNC8(q) == (i+1));
                FUNC0(q && FUNC4(q, JSON_VARIANT_INTEGER) && FUNC5(q) == (i+1));
        }

        /* has bar */
        p = FUNC2(v, "bar");
        FUNC0(p && FUNC7(p) == JSON_VARIANT_OBJECT && FUNC3(p) == 2);

        /* zap is null */
        q = FUNC2(p, "zap");
        FUNC0(q && FUNC7(q) == JSON_VARIANT_NULL);
}