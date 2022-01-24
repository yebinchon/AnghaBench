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
typedef  char* uint64_t ;
struct security_info {int /*<<< orphan*/  notify_access; } ;
struct security_assessor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(
                const struct security_assessor *a,
                const struct security_info *info,
                const void *data,
                uint64_t *ret_badness,
                char **ret_description) {

        FUNC0(ret_badness);
        FUNC0(ret_description);

        *ret_badness = FUNC1(info->notify_access, "all");
        *ret_description = NULL;

        return 0;
}