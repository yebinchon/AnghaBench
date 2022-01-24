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
 int /*<<< orphan*/  ApphelpCacheServiceDump ; 
 int /*<<< orphan*/  ApphelpCacheServiceFlush ; 
 int /*<<< orphan*/  ApphelpCacheServiceLookup ; 
 int /*<<< orphan*/  ApphelpCacheServiceRemove ; 
 int /*<<< orphan*/  ApphelpCacheServiceUpdate ; 
 int /*<<< orphan*/  ApphelpDBGReadRegistry ; 
 int /*<<< orphan*/  ApphelpDBGWriteRegistry ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,int*,char*) ; 
 int FUNC3 (int,char**,int*,char,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int FUNC7(int argc, char* argv[])
{
    int n, unhandled = 0, keepopen = 0;

    for (n = 1; n < argc; ++n)
    {
        char* arg = argv[n];
        if (FUNC4(arg, "d"))
        {
            FUNC6("Calling ApphelpCacheServiceDump\n");
            FUNC0(ApphelpCacheServiceDump, NULL);
            unhandled = 0;
        }
        else if (FUNC4(arg, "h"))
        {
            FUNC1(arg[1] == 'h');
            unhandled = 0;
        }
        else if (FUNC4(arg, "f"))
        {
            FUNC6("Calling ApphelpCacheServiceFlush\n");
            FUNC0(ApphelpCacheServiceFlush, NULL);
            unhandled = 0;
        }
        else if (FUNC4(arg, "z"))
        {
            FUNC6("Calling ApphelpDBGReadRegistry\n");
            FUNC0(ApphelpDBGReadRegistry, NULL);
            unhandled = 0;
        }
        else if (FUNC4(arg, "x"))
        {
            FUNC6("Calling ApphelpDBGWriteRegistry\n");
            FUNC0(ApphelpDBGWriteRegistry, NULL);
            unhandled = 0;
        }
        else if (FUNC4(arg, "l"))
        {
            unhandled |= FUNC3(argc, argv, &n, 'l',
                        ApphelpCacheServiceLookup, "ApphelpCacheServiceLookup");
        }
        else if (FUNC4(arg, "u"))
        {
            unhandled |= FUNC3(argc, argv, &n, 'u',
                        ApphelpCacheServiceUpdate, "ApphelpCacheServiceUpdate");
        }
        else if (FUNC4(arg, "r"))
        {
            unhandled |= FUNC3(argc, argv, &n, 'r',
                        ApphelpCacheServiceRemove, "ApphelpCacheServiceRemove");
        }
        else if (FUNC4(arg, "a"))
        {
            unhandled |= FUNC2(argc, argv, &n, "a");
        }
        else if (FUNC4(arg, "k"))
        {
            keepopen = 1;
        }
        else
        {
            unhandled = 1;
        }
    }
    if (unhandled || argc == 1)
    {
        FUNC6("Usage: %s [-d|-z|-x|-h|-H|-f|-[l|L] <image>|-[u|U] <image>|-[r|R] <image>|-k]\n", argv[0]);
        FUNC6("           -d: Dump shim cache over debug output\n");
        FUNC6("           -z: DEBUG Read shim cache from registry\n");
        FUNC6("           -x: DEBUG Write shim cache to registry\n");
        FUNC6("           -h: Hexdump shim registry key\n");
        FUNC6("           -H: Crc + Length from shim registry key only\n");
        FUNC6("           -f: Flush (clear) the shim cache\n");
        FUNC6("           -l: Lookup <image> in the shim cache\n");
        FUNC6("           -L: Lookup <image> in the shim cache without mapping it\n");
        FUNC6("           -u: Update (insert) <image> in the shim cache\n");
        FUNC6("           -U: Update (insert) <image> in the shim cache without mapping it\n");
        FUNC6("           -r: Remove <image> from the shim cache\n");
        FUNC6("           -R: Remove <image> from the shim cache without mapping it\n");
        FUNC6("           -a: Dump file attributes as used in the appcompat database\n");
        FUNC6("           -k: Keep the console open\n");
    }
    if (keepopen)
    {
        FUNC5();
    }
    return unhandled;
}