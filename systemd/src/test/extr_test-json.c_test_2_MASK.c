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
 scalar_t__ JSON_VARIANT_REAL ; 
 scalar_t__ JSON_VARIANT_STRING ; 
 scalar_t__ JSON_VARIANT_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 double FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC12(JsonVariant *v) {
        JsonVariant *p, *q;

        /* 2 keys + 2 values */
        FUNC0(FUNC4(v) == 4);

        /* has mutant */
        p = FUNC3(v, "mutant");
        FUNC0(p && FUNC9(p) == JSON_VARIANT_ARRAY && FUNC4(p) == 4);

        /* mutant[0] == 1 */
        q = FUNC2(p, 0);
        FUNC0(q && FUNC9(q) == JSON_VARIANT_UNSIGNED && FUNC10(q) == 1);
        FUNC0(q && FUNC5(q, JSON_VARIANT_INTEGER) && FUNC6(q) == 1);

        /* mutant[1] == null */
        q = FUNC2(p, 1);
        FUNC0(q && FUNC9(q) == JSON_VARIANT_NULL);

        /* mutant[2] == "1" */
        q = FUNC2(p, 2);
        FUNC0(q && FUNC9(q) == JSON_VARIANT_STRING && FUNC11(FUNC8(q), "1"));

        /* mutant[3] == JSON_VARIANT_OBJECT */
        q = FUNC2(p, 3);
        FUNC0(q && FUNC9(q) == JSON_VARIANT_OBJECT && FUNC4(q) == 2);

        /* has 1 */
        p = FUNC3(q, "1");
        FUNC0(p && FUNC9(p) == JSON_VARIANT_ARRAY && FUNC4(p) == 2);

        /* "1"[0] == 1 */
        q = FUNC2(p, 0);
        FUNC0(q && FUNC9(q) == JSON_VARIANT_UNSIGNED && FUNC10(q) == 1);
        FUNC0(q && FUNC5(q, JSON_VARIANT_INTEGER) && FUNC6(q) == 1);

        /* "1"[1] == "1" */
        q = FUNC2(p, 1);
        FUNC0(q && FUNC9(q) == JSON_VARIANT_STRING && FUNC11(FUNC8(q), "1"));

        /* has thisisaverylongproperty */
        p = FUNC3(v, "thisisaverylongproperty");
        FUNC0(p && FUNC9(p) == JSON_VARIANT_REAL && FUNC1(FUNC7(p) - 1.27) < 0.001);
}