#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void uint8_t ;
struct TYPE_6__ {int offset; } ;
struct TYPE_7__ {TYPE_1__ property; } ;
struct TYPE_8__ {TYPE_2__ x; } ;
typedef  TYPE_3__ sd_bus_vtable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*) ; 

__attribute__((used)) static void *FUNC1(const sd_bus_vtable *p, void *u) {
        FUNC0(p);

        return (uint8_t*) u + p->x.property.offset;
}