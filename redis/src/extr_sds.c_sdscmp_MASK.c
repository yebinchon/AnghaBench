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
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/  const) ; 

int FUNC2(const sds s1, const sds s2) {
    size_t l1, l2, minlen;
    int cmp;

    l1 = FUNC1(s1);
    l2 = FUNC1(s2);
    minlen = (l1 < l2) ? l1 : l2;
    cmp = FUNC0(s1,s2,minlen);
    if (cmp == 0) return l1>l2? 1: (l1<l2? -1: 0);
    return cmp;
}