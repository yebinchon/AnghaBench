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
typedef  int /*<<< orphan*/  sd_bus_message ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char SD_BUS_TYPE_ARRAY ; 
 int /*<<< orphan*/  SD_BUS_TYPE_OBJECT_PATH ; 
 int /*<<< orphan*/  SD_BUS_TYPE_SIGNATURE ; 
 int /*<<< orphan*/  SD_BUS_TYPE_STRING ; 
 scalar_t__ FUNC1 (char const*,char*,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
                sd_bus_message *m,
                unsigned i,
                char *_type,
                const char **_contents) {

        unsigned j;
        int r;

        r = FUNC3(m, true);
        if (r < 0)
                return r;

        for (j = 0;; j++) {
                const char *contents;
                char type;

                r = FUNC2(m, &type, &contents);
                if (r < 0)
                        return r;
                if (r == 0)
                        return -ENXIO;

                /* Don't match against arguments after the first one we don't understand */
                if (!FUNC0(type, SD_BUS_TYPE_STRING, SD_BUS_TYPE_OBJECT_PATH, SD_BUS_TYPE_SIGNATURE) &&
                    !(type == SD_BUS_TYPE_ARRAY && FUNC1(contents, "s", "o", "g")))
                        return -ENXIO;

                if (j >= i) {
                        if (_contents)
                                *_contents = contents;
                        if (_type)
                                *_type = type;
                        return 0;
                }

                r = FUNC4(m, NULL);
                if (r < 0)
                        return r;
        }

}