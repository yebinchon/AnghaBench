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
typedef  int /*<<< orphan*/ * sds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 

sds FUNC4(sds s, size_t len) {
    size_t curlen = FUNC2(s);

    if (len <= curlen) return s;
    s = FUNC1(s,len-curlen);
    if (s == NULL) return NULL;

    /* Make sure added region doesn't contain garbage */
    FUNC0(*(s+curlen),0,(len-curlen+1)); /* also set trailing \0 byte */
    FUNC3(s, len);
    return s;
}