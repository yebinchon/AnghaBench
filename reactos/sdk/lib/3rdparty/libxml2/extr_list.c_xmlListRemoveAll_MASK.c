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
typedef  int /*<<< orphan*/ * xmlListPtr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*) ; 

int
FUNC1(xmlListPtr l, void *data)
{
    int count=0;

    if (l == NULL)
        return(0);

    while(FUNC0(l, data))
        count++;
    return count;
}