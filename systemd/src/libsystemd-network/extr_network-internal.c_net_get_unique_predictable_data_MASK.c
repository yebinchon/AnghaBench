#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_id128_t ;
typedef  int /*<<< orphan*/  sd_device ;
struct TYPE_2__ {int /*<<< orphan*/  bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODATA ; 
 TYPE_1__ HASH_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char const*,size_t) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC11 (char const*) ; 
 int uint8_t ; 
 int v ; 

int FUNC12(sd_device *device, bool use_sysname, uint64_t *result) {
        size_t l, sz = 0;
        const char *name;
        int r;
        uint8_t *v;

        FUNC1(device);

        /* net_get_name_persistent() will return one of the device names based on stable information about
         * the device. If this is not available, we fall back to using the actual device name. */
        name = FUNC6(device);
        if (!name && use_sysname)
                (void) FUNC8(device, &name);
        if (!name)
                return FUNC4(device, FUNC0(ENODATA),
                                              "No stable identifying information found");

        FUNC3(device, "Using \"%s\" as stable identifying information", name);
        l = FUNC11(name);
        sz = sizeof(sd_id128_t) + l;
        v = FUNC7(uint8_t, sz);

        /* Fetch some persistent data unique to this machine */
        r = FUNC9((sd_id128_t*) v);
        if (r < 0)
                 return r;
        FUNC5(v + sizeof(sd_id128_t), name, l);

        /* Let's hash the machine ID plus the device name. We use
         * a fixed, but originally randomly created hash key here. */
        *result = FUNC2(FUNC10(v, sz, HASH_KEY.bytes));
        return 0;
}