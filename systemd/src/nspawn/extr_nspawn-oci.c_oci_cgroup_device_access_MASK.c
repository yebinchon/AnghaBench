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
struct device_data {int r; int w; int m; } ;
typedef  int /*<<< orphan*/  JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        struct device_data *d = userdata;
        bool r = false, w = false, m = false;
        const char *s;
        size_t i;

        FUNC1(s = FUNC3(v));

        for (i = 0; s[i]; i++)
                if (s[i] == 'r')
                        r = true;
                else if (s[i] == 'w')
                        w = true;
                else if (s[i] == 'm')
                        m = true;
                else
                        return FUNC2(v, flags, FUNC0(EINVAL),
                                        "Unknown device access character '%c'.", s[i]);

        d->r = r;
        d->w = w;
        d->m = m;

        return 0;
}