#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__* string; } ;
typedef  TYPE_1__ JsonVariant ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__** FUNC0 (size_t,int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* JSON_VARIANT_MAGIC_EMPTY_STRING ; 
 int /*<<< orphan*/  JSON_VARIANT_STRING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int) ; 
 int FUNC2 (TYPE_1__**,int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (TYPE_1__**) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char const*,size_t) ; 
 size_t FUNC6 (char const*) ; 

int FUNC7(JsonVariant **ret, const char *s, size_t n) {
        JsonVariant *v;
        int r;

        FUNC1(ret, -EINVAL);
        if (!s) {
                FUNC1(FUNC0(n, 0, (size_t) -1), -EINVAL);
                return FUNC3(ret);
        }
        if (n == (size_t) -1) /* determine length automatically */
                n = FUNC6(s);
        else if (FUNC4(s, 0, n)) /* don't allow embedded NUL, as we can't express that in JSON */
                return -EINVAL;
        if (n == 0) {
                *ret = JSON_VARIANT_MAGIC_EMPTY_STRING;
                return 0;
        }

        r = FUNC2(&v, JSON_VARIANT_STRING, n + 1);
        if (r < 0)
                return r;

        FUNC5(v->string, s, n);
        v->string[n] = 0;

        *ret = v;
        return 0;
}