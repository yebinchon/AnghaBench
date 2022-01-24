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
typedef  int /*<<< orphan*/  sd_device ;
typedef  int /*<<< orphan*/  s ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,char const*,char const*,int) ; 

__attribute__((used)) static int FUNC8(sd_device *dev, sd_device *srcdev,
                                    const char *subsystem, const char *prefix,
                                    const char *filter, bool test) {
        sd_device *d;
        char s[16];
        bool last = false;
        int r = 0;

        FUNC0(dev);

        if (!srcdev)
                srcdev = dev;

        for (d = srcdev; d; ) {
                const char *dsubsys, *devtype, *modalias = NULL;

                if (FUNC5(d, &dsubsys) < 0)
                        goto next;

                /* look only at devices of a specific subsystem */
                if (subsystem && !FUNC6(dsubsys, subsystem))
                        goto next;

                (void) FUNC4(d, "MODALIAS", &modalias);

                if (FUNC6(dsubsys, "usb") &&
                    FUNC2(d, &devtype) >= 0 &&
                    FUNC6(devtype, "usb_device")) {
                        /* if the usb_device does not have a modalias, compose one */
                        if (!modalias)
                                modalias = FUNC1(d, s, sizeof(s));

                        /* avoid looking at any parent device, they are usually just a USB hub */
                        last = true;
                }

                if (!modalias)
                        goto next;

                r = FUNC7(dev, prefix, modalias, filter, test);
                if (r > 0)
                        break;

                if (last)
                        break;
next:
                if (FUNC3(d, &d) < 0)
                        break;
        }

        return r;
}