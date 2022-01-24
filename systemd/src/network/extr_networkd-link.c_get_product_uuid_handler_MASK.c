#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_id128_t ;
struct TYPE_11__ {int has_product_uuid; void* links_requesting_uuid; void* duids_requesting_uuid; int /*<<< orphan*/  product_uuid; } ;
typedef  TYPE_1__ sd_bus_message ;
struct TYPE_12__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_2__ sd_bus_error ;
typedef  TYPE_1__ Manager ;
typedef  int /*<<< orphan*/  Link ;
typedef  int /*<<< orphan*/  DUID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__ const*) ; 
 TYPE_2__* FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*,char,void const**,size_t*) ; 
 void* FUNC11 (void*) ; 
 void* FUNC12 (void*) ; 

int FUNC13(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        Manager *manager = userdata;
        const sd_bus_error *e;
        const void *a;
        size_t sz;
        DUID *duid;
        Link *link;
        int r;

        FUNC0(m);
        FUNC0(manager);

        e = FUNC9(m);
        if (e) {
                FUNC6(FUNC8(e),
                                "Could not get product UUID. Falling back to use machine-app-specific ID as DUID-UUID: %s",
                                e->message);
                goto configure;
        }

        r = FUNC10(m, 'y', &a, &sz);
        if (r < 0)
                goto configure;

        if (sz != sizeof(sd_id128_t)) {
                FUNC5("Invalid product UUID. Falling back to use machine-app-specific ID as DUID-UUID.");
                goto configure;
        }

        FUNC7(&manager->product_uuid, a, sz);
        while ((duid = FUNC12(manager->duids_requesting_uuid)))
                (void) FUNC1(duid, manager->product_uuid);

        manager->duids_requesting_uuid = FUNC11(manager->duids_requesting_uuid);

configure:
        while ((link = FUNC12(manager->links_requesting_uuid))) {
                FUNC4(link);

                r = FUNC2(link);
                if (r < 0)
                        FUNC3(link);
        }

        manager->links_requesting_uuid = FUNC11(manager->links_requesting_uuid);

        /* To avoid calling GetProductUUID() bus method so frequently, set the flag below
         * even if the method fails. */
        manager->has_product_uuid = true;

        return 1;
}