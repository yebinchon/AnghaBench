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
typedef  int /*<<< orphan*/  sd_bus_error ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_JOB_TYPE_NOT_APPLICABLE ; 
 int /*<<< orphan*/  BUS_ERROR_LOAD_FAILED ; 
 int /*<<< orphan*/  BUS_ERROR_NO_ISOLATION ; 
 int /*<<< orphan*/  BUS_ERROR_NO_SUCH_UNIT ; 
 int /*<<< orphan*/  BUS_ERROR_ONLY_BY_DEPENDENCY ; 
 int /*<<< orphan*/  BUS_ERROR_TRANSACTION_IS_DESTRUCTIVE ; 
 int EXIT_FAILURE ; 
 int EXIT_NOPERMISSION ; 
 int EXIT_NOTCONFIGURED ; 
 int EXIT_NOTIMPLEMENTED ; 
 int EXIT_NOTINSTALLED ; 
 int /*<<< orphan*/  SD_BUS_ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  SD_BUS_ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(int r, const sd_bus_error *error) {
        FUNC0(error);

        if (!FUNC2(error))
                return r;

        if (FUNC1(error, SD_BUS_ERROR_ACCESS_DENIED) ||
            FUNC1(error, BUS_ERROR_ONLY_BY_DEPENDENCY) ||
            FUNC1(error, BUS_ERROR_NO_ISOLATION) ||
            FUNC1(error, BUS_ERROR_TRANSACTION_IS_DESTRUCTIVE))
                return EXIT_NOPERMISSION;

        if (FUNC1(error, BUS_ERROR_NO_SUCH_UNIT))
                return EXIT_NOTINSTALLED;

        if (FUNC1(error, BUS_ERROR_JOB_TYPE_NOT_APPLICABLE) ||
            FUNC1(error, SD_BUS_ERROR_NOT_SUPPORTED))
                return EXIT_NOTIMPLEMENTED;

        if (FUNC1(error, BUS_ERROR_LOAD_FAILED))
                return EXIT_NOTCONFIGURED;

        if (r != 0)
                return r;

        return EXIT_FAILURE;
}