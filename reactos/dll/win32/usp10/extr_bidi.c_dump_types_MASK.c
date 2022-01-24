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
typedef  size_t WORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * debug_type ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(const char* header, WORD *types, int start, int end)
{
    int i, len = 0;
    FUNC0("%s:",header);
    for (i = start; i < end && len < 200; i++)
    {
        FUNC0(" %s",debug_type[types[i]]);
        len += FUNC1(debug_type[types[i]])+1;
    }
    if (i != end)
        FUNC0("...");
    FUNC0("\n");
}