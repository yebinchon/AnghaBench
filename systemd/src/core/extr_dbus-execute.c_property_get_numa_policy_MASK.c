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
struct TYPE_8__ {int /*<<< orphan*/  numa_policy; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ sd_bus ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {
        ExecContext *c = userdata;
        int32_t policy;

        FUNC0(bus);
        FUNC0(reply);
        FUNC0(c);

        policy = FUNC1(&c->numa_policy);

        return FUNC2(reply, 'i', &policy);
}