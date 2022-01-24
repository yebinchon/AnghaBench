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
 scalar_t__ FUNC0 () ; 
 char** rlmap ; 
 char** rlmap_initrd ; 
 char* FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char const* const) ; 

const char* FUNC3(const char *word) {
        const char * const *rlmap_ptr;
        size_t i;

        if (!word)
                return NULL;

        if (FUNC0()) {
                word = FUNC1(word, "rd.");
                if (!word)
                        return NULL;
        }

        rlmap_ptr = FUNC0() ? rlmap_initrd : rlmap;

        for (i = 0; rlmap_ptr[i]; i += 2)
                if (FUNC2(word, rlmap_ptr[i]))
                        return rlmap_ptr[i+1];

        return NULL;
}