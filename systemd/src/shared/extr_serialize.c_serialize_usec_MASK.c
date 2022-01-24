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
typedef  scalar_t__ usec_t ;
typedef  char const FILE ;

/* Variables and functions */
 int /*<<< orphan*/  USEC_FMT ; 
 scalar_t__ USEC_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC2(FILE *f, const char *key, usec_t usec) {
        FUNC0(f);
        FUNC0(key);

        if (usec == USEC_INFINITY)
                return 0;

        return FUNC1(f, key, USEC_FMT, usec);
}