#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  duids_requesting_uuid; int /*<<< orphan*/  links_requesting_uuid; int /*<<< orphan*/  product_uuid; scalar_t__ has_product_uuid; struct TYPE_15__* manager; struct TYPE_15__* network; } ;
typedef  TYPE_1__ Manager ;
typedef  TYPE_1__ Link ;
typedef  TYPE_1__ DUID ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,char*) ; 
 int FUNC6 () ; 
 int FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(Link *link) {
        Manager *m;
        DUID *duid;
        int r;

        FUNC0(link);
        FUNC0(link->manager);
        FUNC0(link->network);

        m = link->manager;
        duid = FUNC2(link);

        if (!FUNC4(link))
                return 1;

        if (m->has_product_uuid) {
                (void) FUNC1(duid, m->product_uuid);
                return 1;
        }

        if (!m->links_requesting_uuid) {
                r = FUNC7(m, link);
                if (r < 0) {
                        if (r == -ENOMEM)
                                return r;

                        FUNC5(link, r,
                                               "Failed to get product UUID. Falling back to use machine-app-specific ID as DUID-UUID: %m");
                        return 1;
                }
        } else {
                r = FUNC8(m->links_requesting_uuid, link);
                if (r < 0)
                        return FUNC6();

                r = FUNC8(m->duids_requesting_uuid, duid);
                if (r < 0)
                        return FUNC6();

                FUNC3(link);
        }

        return 0;
}