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
typedef  int usec_t ;
typedef  int uintmax_t ;
typedef  int /*<<< orphan*/  JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int UINT64_MAX ; 
 int USEC_PER_SEC ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        usec_t *u = userdata;
        uintmax_t k;

        k = FUNC2(v);
        if (k == 0 || k > (UINT64_MAX-1)/USEC_PER_SEC)
                return FUNC1(v, flags, FUNC0(ERANGE),
                                "Hook timeout value out of range.");

        *u = k * USEC_PER_SEC;
        return 0;
}