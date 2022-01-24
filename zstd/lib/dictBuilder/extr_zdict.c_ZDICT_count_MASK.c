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

/* Variables and functions */
 size_t FUNC0 (void const*) ; 
 int FUNC1 (size_t const) ; 

__attribute__((used)) static size_t FUNC2(const void* pIn, const void* pMatch)
{
    const char* const pStart = (const char*)pIn;
    for (;;) {
        size_t const diff = FUNC0(pMatch) ^ FUNC0(pIn);
        if (!diff) {
            pIn = (const char*)pIn+sizeof(size_t);
            pMatch = (const char*)pMatch+sizeof(size_t);
            continue;
        }
        pIn = (const char*)pIn+FUNC1(diff);
        return (size_t)((const char*)pIn - pStart);
    }
}