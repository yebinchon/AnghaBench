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
typedef  int /*<<< orphan*/  xmlreader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static inline void *FUNC2(xmlreader *reader, size_t len)
{
    void *ret = FUNC1(reader, len);
    if (ret)
        FUNC0(ret, 0, len);
    return ret;
}