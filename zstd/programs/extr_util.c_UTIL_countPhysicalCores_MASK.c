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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUF_SIZE ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int FUNC0 (char const* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(void)
{
    static int numPhysicalCores = 0;

    if (numPhysicalCores != 0) return numPhysicalCores;

    numPhysicalCores = (int)FUNC8(_SC_NPROCESSORS_ONLN);
    if (numPhysicalCores == -1) {
        /* value not queryable, fall back on 1 */
        return numPhysicalCores = 1;
    }

    /* try to determine if there's hyperthreading */
    {   FILE* const cpuinfo = FUNC5("/proc/cpuinfo", "r");
#define BUF_SIZE 80
        char buff[BUF_SIZE];

        int siblings = 0;
        int cpu_cores = 0;
        int ratio = 1;

        if (cpuinfo == NULL) {
            /* fall back on the sysconf value */
            return numPhysicalCores;
        }

        /* assume the cpu cores/siblings values will be constant across all
         * present processors */
        while (!FUNC2(cpuinfo)) {
            if (FUNC4(buff, BUF_SIZE, cpuinfo) != NULL) {
                if (FUNC7(buff, "siblings", 8) == 0) {
                    const char* const sep = FUNC6(buff, ':');
                    if (sep == NULL || *sep == '\0') {
                        /* formatting was broken? */
                        goto failed;
                    }

                    siblings = FUNC0(sep + 1);
                }
                if (FUNC7(buff, "cpu cores", 9) == 0) {
                    const char* const sep = FUNC6(buff, ':');
                    if (sep == NULL || *sep == '\0') {
                        /* formatting was broken? */
                        goto failed;
                    }

                    cpu_cores = FUNC0(sep + 1);
                }
            } else if (FUNC3(cpuinfo)) {
                /* fall back on the sysconf value */
                goto failed;
            }
        }
        if (siblings && cpu_cores) {
            ratio = siblings / cpu_cores;
        }
failed:
        FUNC1(cpuinfo);
        return numPhysicalCores = numPhysicalCores / ratio;
    }
}