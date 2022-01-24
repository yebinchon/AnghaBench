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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  services_discovery_t ;
typedef  int pa_subscription_event_type_t ;
typedef  int /*<<< orphan*/  pa_operation ;
typedef  int /*<<< orphan*/  pa_context ;

/* Variables and functions */
#define  PA_SUBSCRIPTION_EVENT_CHANGE 130 
 int PA_SUBSCRIPTION_EVENT_FACILITY_MASK ; 
#define  PA_SUBSCRIPTION_EVENT_NEW 129 
#define  PA_SUBSCRIPTION_EVENT_REMOVE 128 
 int PA_SUBSCRIPTION_EVENT_SOURCE ; 
 int PA_SUBSCRIPTION_EVENT_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SourceCallback ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(pa_context *ctx, pa_subscription_event_type_t type,
                            uint32_t idx, void *userdata)
{
    services_discovery_t *sd = userdata;
    pa_operation *op;

    FUNC1 ((type & PA_SUBSCRIPTION_EVENT_FACILITY_MASK)
                                              == PA_SUBSCRIPTION_EVENT_SOURCE);
    switch (type & PA_SUBSCRIPTION_EVENT_TYPE_MASK)
    {
      case PA_SUBSCRIPTION_EVENT_NEW:
      case PA_SUBSCRIPTION_EVENT_CHANGE:
        op = FUNC3(ctx, idx, SourceCallback, sd);
        if (FUNC2(op != NULL))
            FUNC4(op);
        break;

      case PA_SUBSCRIPTION_EVENT_REMOVE:
        FUNC0 (sd, idx);
        break;
    }
}