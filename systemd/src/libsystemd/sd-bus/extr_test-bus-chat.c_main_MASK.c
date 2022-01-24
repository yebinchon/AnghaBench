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
typedef  int /*<<< orphan*/  sd_bus ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  LOG_INFO ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  client1 ; 
 int /*<<< orphan*/  client2 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,void**) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(int argc, char *argv[]) {
        pthread_t c1, c2;
        sd_bus *bus;
        void *p;
        int q, r;

        FUNC7(LOG_INFO);

        r = FUNC6(&bus);
        if (r < 0)
                return FUNC2("Failed to connect to bus");

        FUNC1("Initialized...");

        r = FUNC3(&c1, NULL, client1, bus);
        if (r != 0)
                return EXIT_FAILURE;

        r = FUNC3(&c2, NULL, client2, bus);
        if (r != 0)
                return EXIT_FAILURE;

        r = FUNC5(bus);

        q = FUNC4(c1, &p);
        if (q != 0)
                return EXIT_FAILURE;
        if (FUNC0(p) < 0)
                return EXIT_FAILURE;

        q = FUNC4(c2, &p);
        if (q != 0)
                return EXIT_FAILURE;
        if (FUNC0(p) < 0)
                return EXIT_FAILURE;

        if (r < 0)
                return EXIT_FAILURE;

        return EXIT_SUCCESS;
}