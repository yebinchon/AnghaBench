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
struct cache_entry {int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 int DT_DIR ; 
 int DT_LNK ; 
 int DT_REG ; 
 int DT_UNKNOWN ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(const struct cache_entry *ce)
{
    unsigned ce_mode = FUNC4(ce->ce_mode);
    if (FUNC3(ce_mode))
        return DT_REG;
    else if (FUNC0(ce_mode) || FUNC1(ce_mode))
        return DT_DIR;
    else if (FUNC2(ce_mode))
        return DT_LNK;
    else
        return DT_UNKNOWN;
}