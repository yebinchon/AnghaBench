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
struct cache_entry {int dummy; } ;
typedef  int /*<<< orphan*/  SeafStat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_entry*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static struct cache_entry *FUNC3(struct cache_entry *ce,
                                               const char *full_path)
{
    SeafStat st;

    if (FUNC1 (full_path, &st) < 0) {
        FUNC2("Failed to stat %s.\n", full_path);
        return NULL;
    }
    FUNC0(ce, &st);

    return ce;
}