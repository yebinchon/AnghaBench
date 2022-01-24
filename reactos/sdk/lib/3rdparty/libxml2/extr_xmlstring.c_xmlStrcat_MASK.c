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
typedef  scalar_t__ xmlChar ;

/* Variables and functions */
 scalar_t__* FUNC0 (scalar_t__ const*) ; 
 scalar_t__* FUNC1 (scalar_t__*,scalar_t__ const*,int) ; 

xmlChar *
FUNC2(xmlChar *cur, const xmlChar *add) {
    const xmlChar *p = add;

    if (add == NULL) return(cur);
    if (cur == NULL)
        return(FUNC0(add));

    while (*p != 0) p++; /* non input consuming */
    return(FUNC1(cur, add, p - add));
}