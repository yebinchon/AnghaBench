#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int scan_uptodate; scalar_t__ type; size_t n_devices; int /*<<< orphan*/ * devices; scalar_t__ match_parent; int /*<<< orphan*/  match_tag; } ;
typedef  TYPE_1__ sd_device_enumerator ;

/* Variables and functions */
 scalar_t__ DEVICE_ENUMERATION_TYPE_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  device_compare ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

int FUNC8(sd_device_enumerator *enumerator) {
        int r = 0, k;
        size_t i;

        FUNC0(enumerator);

        if (enumerator->scan_uptodate &&
            enumerator->type == DEVICE_ENUMERATION_TYPE_DEVICES)
                return 0;

        for (i = 0; i < enumerator->n_devices; i++)
                FUNC5(enumerator->devices[i]);

        enumerator->n_devices = 0;

        if (!FUNC6(enumerator->match_tag)) {
                k = FUNC4(enumerator);
                if (k < 0)
                        r = k;
        } else if (enumerator->match_parent) {
                k = FUNC3(enumerator);
                if (k < 0)
                        r = k;
        } else {
                k = FUNC2(enumerator);
                if (k < 0)
                        r = k;
        }

        FUNC7(enumerator->devices, enumerator->n_devices, device_compare);
        FUNC1(enumerator);

        enumerator->scan_uptodate = true;
        enumerator->type = DEVICE_ENUMERATION_TYPE_DEVICES;

        return r;
}