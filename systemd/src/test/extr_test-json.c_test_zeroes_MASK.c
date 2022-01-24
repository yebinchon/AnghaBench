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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSON_VARIANT_INTEGER ; 
 int /*<<< orphan*/  JSON_VARIANT_REAL ; 
 int /*<<< orphan*/  JSON_VARIANT_UNSIGNED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 long double FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(JsonVariant *v) {
        size_t i;

        /* Make sure zero is how we expect it. */

        FUNC1(FUNC3(v) == 13);

        for (i = 0; i < FUNC3(v); i++) {
                JsonVariant *w;
                size_t j;

                FUNC1(*(w = FUNC2(v, i)));

                FUNC1(FUNC5(w) == 0);
                FUNC1(FUNC13(w) == 0U);

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wfloat-equal"
                FUNC1(FUNC11(w) == 0.0L);
#pragma GCC diagnostic pop

                FUNC1(*FUNC6(w));
                FUNC1(*FUNC10(w));
                FUNC1(*FUNC9(w));
                FUNC1(*FUNC8(w));

                FUNC1(!FUNC7(w));

                FUNC1(*FUNC0(FUNC12(w), JSON_VARIANT_INTEGER, JSON_VARIANT_UNSIGNED, JSON_VARIANT_REAL));

                for (j = 0; j < FUNC3(v); j++) {
                        JsonVariant *q;

                        FUNC1(*(q = FUNC2(v, j)));

                        FUNC1(*FUNC4(w, q));
                }
        }
}