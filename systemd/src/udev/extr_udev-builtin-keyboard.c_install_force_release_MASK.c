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
typedef  unsigned int const sd_device ;
typedef  int /*<<< orphan*/  codes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int const*,char*,char*) ; 
 int FUNC2 (unsigned int const*,int,char*) ; 
 int FUNC3 (unsigned int const*,char*,int /*<<< orphan*/ *,unsigned int const**) ; 
 int FUNC4 (unsigned int const*,char*,char const**) ; 
 int FUNC5 (unsigned int const*,char*,char*) ; 
 size_t FUNC6 (char**,size_t,char const*) ; 
 size_t FUNC7 (char**,size_t,char*,unsigned int const) ; 

__attribute__((used)) static int FUNC8(sd_device *dev, const unsigned *release, unsigned release_count) {
        sd_device *atkbd;
        const char *cur;
        char codes[4096];
        char *s;
        size_t l;
        unsigned i;
        int r;

        FUNC0(dev);
        FUNC0(release);

        r = FUNC3(dev, "serio", NULL, &atkbd);
        if (r < 0)
                return FUNC2(dev, r, "Failed to get serio parent: %m");

        r = FUNC4(atkbd, "force_release", &cur);
        if (r < 0)
                return FUNC2(atkbd, r, "Failed to get force-release attribute: %m");

        s = codes;
        l = sizeof(codes);

        /* copy current content */
        l = FUNC6(&s, l, cur);

        /* append new codes */
        for (i = 0; i < release_count; i++)
                l = FUNC7(&s, l, ",%u", release[i]);

        FUNC1(atkbd, "keyboard: updating force-release list with '%s'", codes);
        r = FUNC5(atkbd, "force_release", codes);
        if (r < 0)
                return FUNC2(atkbd, r, "Failed to set force-release attribute: %m");

        return 0;
}