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
typedef  char const sd_journal ;

/* Variables and functions */
 size_t REPLACE_VAR_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*,void const**,size_t*) ; 
 char* FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char const*,size_t) ; 

__attribute__((used)) static char *FUNC5(const char *field, void *userdata) {
        sd_journal *j = userdata;
        const void *data;
        size_t size, d;
        int r;

        FUNC0(field);
        FUNC0(j);

        r = FUNC1(j, field, &data, &size);
        if (r < 0 ||
            size > REPLACE_VAR_MAX)
                return FUNC2(field);

        d = FUNC3(field) + 1;

        return FUNC4((const char*) data + d, size - d);
}