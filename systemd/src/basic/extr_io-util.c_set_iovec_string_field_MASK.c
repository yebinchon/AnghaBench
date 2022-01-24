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
struct iovec {int dummy; } ;

/* Variables and functions */
 struct iovec FUNC0 (char*) ; 
 char* FUNC1 (char const*,char const*) ; 

char* FUNC2(struct iovec *iovec, size_t *n_iovec, const char *field, const char *value) {
        char *x;

        x = FUNC1(field, value);
        if (x)
                iovec[(*n_iovec)++] = FUNC0(x);
        return x;
}