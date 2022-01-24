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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (void const*,char const*,size_t) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char const*,size_t) ; 

__attribute__((used)) static int FUNC5(const void *data,
                    size_t len,
                    const char *name,
                    char **var) {

        size_t ident;
        char *v;

        ident = FUNC3(name) + 1; /* name + "=" */

        if (len < ident)
                return 0;

        if (FUNC2(data, name, ident - 1) != 0)
                return 0;

        if (((const char*) data)[ident - 1] != '=')
                return 0;

        v = FUNC4((const char*)data + ident, len - ident);
        if (!v)
                return FUNC1();

        FUNC0(*var, v);
        return 1;
}