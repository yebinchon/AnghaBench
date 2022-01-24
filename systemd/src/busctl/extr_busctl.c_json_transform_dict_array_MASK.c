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
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  JsonVariant ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,size_t) ; 
 int FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char,char const*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,char const**) ; 

__attribute__((used)) static int FUNC12(sd_bus_message *m, JsonVariant **ret) {
        size_t n_elements = 0, n_allocated = 0;
        JsonVariant **elements = NULL;
        int r;

        FUNC1(*m);
        FUNC1(ret);

        for (;;) {
                const char *contents;
                char type;

                r = FUNC8(m, false);
                if (r < 0) {
                        FUNC2(r);
                        goto finish;
                }
                if (r > 0)
                        break;

                r = FUNC11(m, &type, &contents);
                if (r < 0)
                        return r;

                FUNC1(type == 'e');

                if (!FUNC0(elements, n_allocated, n_elements + 2)) {
                        r = FUNC7();
                        goto finish;
                }

                r = FUNC9(m, type, contents);
                if (r < 0) {
                        FUNC2(r);
                        goto finish;
                }

                r = FUNC4(m, elements + n_elements);
                if (r < 0)
                        goto finish;

                n_elements++;

                r = FUNC4(m, elements + n_elements);
                if (r < 0)
                        goto finish;

                n_elements++;

                r = FUNC10(m);
                if (r < 0) {
                        FUNC2(r);
                        goto finish;
                }
        }

        r = FUNC5(ret, elements, n_elements);

finish:
        FUNC6(elements, n_elements);
        FUNC3(elements);

        return r;
}