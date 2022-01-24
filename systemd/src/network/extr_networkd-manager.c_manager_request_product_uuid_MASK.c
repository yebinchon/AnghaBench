#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  duids_requesting_uuid; int /*<<< orphan*/  links_requesting_uuid; scalar_t__ has_product_uuid; } ;
typedef  TYPE_1__ Manager ;
typedef  int /*<<< orphan*/  Link ;
typedef  int /*<<< orphan*/  DUID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  get_product_uuid_handler ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 int FUNC6 (int,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(Manager *m, Link *link) {
        int r;

        FUNC0(m);

        if (m->has_product_uuid)
                return 0;

        FUNC4("Requesting product UUID");

        if (link) {
                DUID *duid;

                FUNC1(duid = FUNC2(link));

                r = FUNC9(&m->links_requesting_uuid, NULL);
                if (r < 0)
                        return FUNC5();

                r = FUNC9(&m->duids_requesting_uuid, NULL);
                if (r < 0)
                        return FUNC5();

                r = FUNC10(m->links_requesting_uuid, link);
                if (r < 0)
                        return FUNC5();

                r = FUNC10(m->duids_requesting_uuid, duid);
                if (r < 0)
                        return FUNC5();

                FUNC3(link);
        }

        if (!m->bus || FUNC8(m->bus) <= 0) {
                FUNC4("Not connected to system bus, requesting product UUID later.");
                return 0;
        }

        r = FUNC7(
                        m->bus,
                        NULL,
                        "org.freedesktop.hostname1",
                        "/org/freedesktop/hostname1",
                        "org.freedesktop.hostname1",
                        "GetProductUUID",
                        get_product_uuid_handler,
                        m,
                        "b",
                        false);
        if (r < 0)
                return FUNC6(r, "Failed to get product UUID: %m");

        return 0;
}