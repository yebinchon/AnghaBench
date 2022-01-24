#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name_template; int /*<<< orphan*/  type; int /*<<< orphan*/  name; int /*<<< orphan*/  filename; int /*<<< orphan*/  txt_data_items; int /*<<< orphan*/  srv_rr; int /*<<< orphan*/  ptr_rr; TYPE_1__* manager; } ;
struct TYPE_7__ {int /*<<< orphan*/  dnssd_services; } ;
typedef  TYPE_2__ DnssdService ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 

DnssdService *FUNC5(DnssdService *service) {
        if (!service)
                return NULL;

        if (service->manager)
                FUNC3(service->manager->dnssd_services, service->name);

        FUNC0(service->ptr_rr);
        FUNC0(service->srv_rr);

        FUNC1(service->txt_data_items);

        FUNC2(service->filename);
        FUNC2(service->name);
        FUNC2(service->type);
        FUNC2(service->name_template);

        return FUNC4(service);
}