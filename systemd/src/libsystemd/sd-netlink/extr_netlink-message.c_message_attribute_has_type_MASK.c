#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_6__ {size_t n_containers; TYPE_1__* containers; } ;
typedef  TYPE_2__ sd_netlink_message ;
struct TYPE_5__ {int /*<<< orphan*/  type_system; } ;
typedef  int /*<<< orphan*/  NLType ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,scalar_t__) ; 

__attribute__((used)) static int FUNC4(sd_netlink_message *m, size_t *out_size, uint16_t attribute_type, uint16_t data_type) {
        const NLType *type;
        int r;

        FUNC0(m);

        r = FUNC3(m->containers[m->n_containers].type_system, &type, attribute_type);
        if (r < 0)
                return r;

        if (FUNC2(type) != data_type)
                return -EINVAL;

        if (out_size)
                *out_size = FUNC1(type);
        return 0;
}