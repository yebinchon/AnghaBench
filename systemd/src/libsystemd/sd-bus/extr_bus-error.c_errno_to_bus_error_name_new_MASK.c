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
 int ENOMEM ; 
 char* FUNC0 (int) ; 
 char* FUNC1 (char*,char const*) ; 

__attribute__((used)) static int FUNC2(int error, char **ret) {
        const char *name;
        char *n;

        if (error < 0)
                error = -error;

        name = FUNC0(error);
        if (!name)
                return 0;

        n = FUNC1("System.Error.", name);
        if (!n)
                return -ENOMEM;

        *ret = n;
        return 1;
}