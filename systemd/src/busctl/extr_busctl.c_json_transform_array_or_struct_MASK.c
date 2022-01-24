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
typedef  int /*<<< orphan*/ * sd_bus_message ;
typedef  int /*<<< orphan*/  JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,size_t) ; 
 int FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static int FUNC9(sd_bus_message *m, JsonVariant **ret) {
        size_t n_elements = 0, n_allocated = 0;
        JsonVariant **elements = NULL;
        int r;

        FUNC1(m);
        FUNC1(ret);

        for (;;) {
                r = FUNC8(m, false);
                if (r < 0) {
                        FUNC2(r);
                        goto finish;
                }
                if (r > 0)
                        break;

                if (!FUNC0(elements, n_allocated, n_elements + 1)) {
                        r = FUNC7();
                        goto finish;
                }

                r = FUNC4(m, elements + n_elements);
                if (r < 0)
                        goto finish;

                n_elements++;
        }

        r = FUNC5(ret, elements, n_elements);

finish:
        FUNC6(elements, n_elements);
        FUNC3(elements);

        return r;
}