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
typedef  void sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;
typedef  int /*<<< orphan*/  DnsServer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (void*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        DnsServer *s;

        FUNC0(reply);
        FUNC0(userdata);

        s = *(DnsServer **) userdata;

        return FUNC1(reply, s, true);
}