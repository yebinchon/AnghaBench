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
typedef  int /*<<< orphan*/  Varlink ;
typedef  int /*<<< orphan*/  JsonVariant ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  VARLINK_ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(Varlink *v, JsonVariant *parameters) {

        FUNC0(v, -EINVAL);
        FUNC0(parameters, -EINVAL);

        /* We expect to be called in one of two ways: the 'parameters' argument is a string variant in which
         * case it is the parameter key name that is invalid. Or the 'parameters' argument is an object
         * variant in which case we'll pull out the first key. The latter mode is useful in functions that
         * don't expect any arguments. */

        if (FUNC4(parameters))
                return FUNC5(v, VARLINK_ERROR_INVALID_PARAMETER, parameters);

        if (FUNC3(parameters) &&
            FUNC2(parameters) > 0)
                return FUNC5(v, VARLINK_ERROR_INVALID_PARAMETER,
                                     FUNC1(parameters, 0));

        return -EINVAL;
}