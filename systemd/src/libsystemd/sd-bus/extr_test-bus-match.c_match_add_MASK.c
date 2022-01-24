#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bus_match_node {int dummy; } ;
struct bus_match_component {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  callback; } ;
struct TYPE_5__ {TYPE_4__ match_callback; int /*<<< orphan*/  userdata; } ;
typedef  TYPE_1__ sd_bus_slot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct bus_match_node*,struct bus_match_component*,unsigned int,TYPE_4__*) ; 
 int FUNC2 (char const*,struct bus_match_component**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct bus_match_component*,unsigned int) ; 
 int /*<<< orphan*/  filter ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__) ; 

__attribute__((used)) static int FUNC5(sd_bus_slot *slots, struct bus_match_node *root, const char *match, int value) {
        struct bus_match_component *components = NULL;
        unsigned n_components = 0;
        sd_bus_slot *s;
        int r;

        s = slots + value;
        FUNC4(*s);

        r = FUNC2(match, &components, &n_components);
        if (r < 0)
                return r;

        s->userdata = FUNC0(value);
        s->match_callback.callback = filter;

        r = FUNC1(root, components, n_components, &s->match_callback);
        FUNC3(components, n_components);

        return r;
}