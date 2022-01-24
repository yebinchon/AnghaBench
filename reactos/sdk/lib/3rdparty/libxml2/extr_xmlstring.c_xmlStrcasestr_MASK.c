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
typedef  size_t xmlChar ;

/* Variables and functions */
 scalar_t__* casemap ; 
 int FUNC0 (size_t const*) ; 
 int /*<<< orphan*/  FUNC1 (size_t const*,size_t const*,int) ; 

const xmlChar *
FUNC2(const xmlChar *str, const xmlChar *val) {
    int n;

    if (str == NULL) return(NULL);
    if (val == NULL) return(NULL);
    n = FUNC0(val);

    if (n == 0) return(str);
    while (*str != 0) { /* non input consuming */
        if (casemap[*str] == casemap[*val])
            if (!FUNC1(str, val, n)) return(str);
        str++;
    }
    return(NULL);
}