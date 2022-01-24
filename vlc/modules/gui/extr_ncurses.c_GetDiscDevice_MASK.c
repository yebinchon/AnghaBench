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
 char* FUNC0 (char const*) ; 
 size_t FUNC1 (char*,char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,size_t) ; 

__attribute__((used)) static char *FUNC4(const char *name)
{
    static const struct { const char *s; size_t n; const char *v; } devs[] =
    {
        { "cdda://", 7, "cd-audio", },
        { "dvd://",  6, "dvd",      },
        { "vcd://",  6, "vcd",      },
    };
    char *device;

    for (unsigned i = 0; i < sizeof devs / sizeof *devs; i++) {
        size_t n = devs[i].n;
        if (!FUNC3(name, devs[i].s, n)) {
            if (name[n] == '@' || name[n] == '\0')
                return FUNC0(devs[i].v);
            /* Omit the beginning MRL-selector characters */
            return FUNC2(name + n);
        }
    }

    device = FUNC2(name);

    if (device) /* Remove what we have after @ */
        device[FUNC1(device, "@")] = '\0';

    return device;
}