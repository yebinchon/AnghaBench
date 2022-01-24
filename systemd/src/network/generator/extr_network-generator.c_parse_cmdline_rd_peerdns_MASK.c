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
typedef  int /*<<< orphan*/  Context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3(Context *context, const char *key, const char *value) {
        int r;

        if (FUNC2(key, value))
                return FUNC0(context, "", true);

        r = FUNC1(value);
        if (r < 0)
                return r;

        return FUNC0(context, "", r);
}