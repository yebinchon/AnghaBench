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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ catalog_dirs ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,char const* const*) ; 
 char const* const* no_catalog_dirs ; 

__attribute__((used)) static void FUNC2(const char *database) {
        int r;

        /* Test what happens if there are no files. */
        r = FUNC1(database, NULL, NULL);
        FUNC0(r == 0);

        /* Test what happens if there are no files in the directory. */
        r = FUNC1(database, NULL, no_catalog_dirs);
        FUNC0(r == 0);

        /* Make sure that we at least have some files loaded or the
         * catalog_list below will fail. */
        r = FUNC1(database, NULL, (const char * const *) catalog_dirs);
        FUNC0(r == 0);
}