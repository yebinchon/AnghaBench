#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct NBNameCache {int /*<<< orphan*/  cs; } ;
typedef  char UCHAR ;
struct TYPE_3__ {int /*<<< orphan*/ * entry; } ;
typedef  TYPE_1__ NBNameCacheNode ;
typedef  int /*<<< orphan*/  NBNameCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC2 (struct NBNameCache*,char const*) ; 
 int NCBNAMSZ ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

const NBNameCacheEntry *FUNC4(struct NBNameCache *cache,
 const UCHAR name[NCBNAMSZ])
{
    const NBNameCacheEntry *ret;
    UCHAR printName[NCBNAMSZ];

    FUNC3(printName, name, NCBNAMSZ - 1);
    printName[NCBNAMSZ - 1] = '\0';
    if (cache)
    {
        NBNameCacheNode **node;

        FUNC0(&cache->cs);
        node = FUNC2(cache, (const char *)name);
        if (node)
            ret = (*node)->entry;
        else
            ret = NULL;
        FUNC1(&cache->cs);
    }
    else
        ret = NULL;
    return ret;
}