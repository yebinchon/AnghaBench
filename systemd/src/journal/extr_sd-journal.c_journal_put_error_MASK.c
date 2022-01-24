#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  errors; } ;
typedef  TYPE_1__ sd_journal ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(sd_journal *j, int r, const char *path) {
        char *copy;
        int k;

        /* Memorize an error we encountered, and store which
         * file/directory it was generated from. Note that we store
         * only *one* path per error code, as the error code is the
         * key into the hashmap, and the path is the value. This means
         * we keep track only of all error kinds, but not of all error
         * locations. This has the benefit that the hashmap cannot
         * grow beyond bounds.
         *
         * We return an error here only if we didn't manage to
         * memorize the real error. */

        if (r >= 0)
                return r;

        k = FUNC2(&j->errors, NULL);
        if (k < 0)
                return k;

        if (path) {
                copy = FUNC4(path);
                if (!copy)
                        return -ENOMEM;
        } else
                copy = NULL;

        k = FUNC3(j->errors, FUNC0(r), copy);
        if (k < 0) {
                FUNC1(copy);

                if (k == -EEXIST)
                        return 0;

                return k;
        }

        return 0;
}