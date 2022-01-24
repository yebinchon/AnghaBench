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
struct TYPE_15__ {int flags; int /*<<< orphan*/  configure_without_carrier; struct TYPE_15__* network; int /*<<< orphan*/  kind; scalar_t__ bridge; scalar_t__ use_br_vlan; scalar_t__ bond; int /*<<< orphan*/  bound_to_links; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  LINK_STATE_CONFIGURING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,char*) ; 
 scalar_t__ FUNC13 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(Link *link) {
        int r;

        FUNC0(link);
        FUNC0(link->network);

        if (!FUNC1(link->bound_to_links)) {
                r = FUNC4(link);
                if (r < 0)
                        return r;
        } else if (!(link->flags & IFF_UP)) {
                r = FUNC11(link);
                if (r < 0) {
                        FUNC3(link);
                        return r;
                }
        }

        if (link->network->bridge) {
                r = FUNC8(link);
                if (r < 0)
                        FUNC12(link, r, "Could not set bridge message: %m");

                r = FUNC2(link, link->network->bridge);
                if (r < 0)
                        FUNC12(link, r, "Failed to add to bridge master's slave list: %m");
        }

        if (link->network->bond) {
                r = FUNC7(link);
                if (r < 0)
                        FUNC12(link, r, "Could not set bond message: %m");

                r = FUNC2(link, link->network->bond);
                if (r < 0)
                        FUNC12(link, r, "Failed to add to bond master's slave list: %m");
        }

        if (link->network->use_br_vlan &&
            (link->network->bridge || FUNC13("bridge", link->kind))) {
                r = FUNC9(link);
                if (r < 0)
                        FUNC12(link, r, "Could not set bridge vlan: %m");
        }

        /* Skip setting up addresses until it gets carrier,
           or it would try to set addresses twice,
           which is bad for non-idempotent steps. */
        if (!FUNC5(link) && !link->network->configure_without_carrier)
                return 0;

        FUNC10(link, LINK_STATE_CONFIGURING);
        return FUNC6(link);
}