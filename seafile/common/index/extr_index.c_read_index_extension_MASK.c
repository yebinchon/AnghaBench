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
struct index_state {int dummy; } ;

/* Variables and functions */
#define  CACHE_EXT_MODIFIER 128 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int FUNC1 (struct index_state*,void*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct index_state *istate,
                                unsigned int ext, void *data, unsigned int sz)
{
    switch (ext) {
    case CACHE_EXT_MODIFIER:
        return FUNC1 (istate, data, sz);
    default:
        FUNC0("unknown extension %u.\n", ext);
        break;
    }
    return 0;
}