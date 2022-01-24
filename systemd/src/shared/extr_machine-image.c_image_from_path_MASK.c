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
typedef  int /*<<< orphan*/  Image ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

int FUNC2(const char *path, Image **ret) {

        /* Note that we don't set the 'discoverable' field of the returned object, because we don't check here whether
         * the image is in the image search path. And if it is we don't know if the path we used is actually not
         * overridden by another, different image earlier in the search path */

        if (FUNC1(path, "/"))
                return FUNC0(".host", AT_FDCWD, NULL, "/", NULL, ret);

        return FUNC0(NULL, AT_FDCWD, NULL, path, NULL, ret);
}