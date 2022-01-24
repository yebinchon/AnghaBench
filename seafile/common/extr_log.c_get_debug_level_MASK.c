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
 int G_LOG_LEVEL_DEBUG ; 
 int G_LOG_LEVEL_INFO ; 
 int G_LOG_LEVEL_WARNING ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *str, int default_level)
{
    if (FUNC0(str, "debug") == 0)
        return G_LOG_LEVEL_DEBUG;
    if (FUNC0(str, "info") == 0)
        return G_LOG_LEVEL_INFO;
    if (FUNC0(str, "warning") == 0)
        return G_LOG_LEVEL_WARNING;
    return default_level;
}