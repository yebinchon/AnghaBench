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
 unsigned long PER_LINUX ; 
 unsigned long PER_LINUX32 ; 
 int SECONDARY_ARCHITECTURE ; 
 int _ARCHITECTURE_INVALID ; 
 char const* FUNC0 (int) ; 
 int FUNC1 () ; 

const char* FUNC2(unsigned long p) {
        int architecture = _ARCHITECTURE_INVALID;

        if (p == PER_LINUX)
                architecture = FUNC1();
#ifdef SECONDARY_ARCHITECTURE
        else if (p == PER_LINUX32)
                architecture = SECONDARY_ARCHITECTURE;
#endif

        if (architecture < 0)
                return NULL;

        return FUNC0(architecture);
}