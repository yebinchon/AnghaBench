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
 int CONF_FILES_BASENAME ; 
 int CONF_FILES_DIRECTORY ; 
 int CONF_FILES_FILTER_MASKED ; 
 int /*<<< orphan*/  FUNC0 (char***) ; 
 int FUNC1 (char***,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  profile_dirs ; 

int FUNC2(char ***ret) {
        FUNC0(ret);

        return FUNC1(ret, NULL, NULL, CONF_FILES_DIRECTORY|CONF_FILES_BASENAME|CONF_FILES_FILTER_MASKED, profile_dirs);
}