#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* member; } ;
struct TYPE_5__ {TYPE_2__ property; } ;
struct TYPE_7__ {scalar_t__ type; int flags; TYPE_1__ x; } ;
typedef  TYPE_3__ sd_bus_vtable ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SD_BUS_VTABLE_DEPRECATED ; 
 int SD_BUS_VTABLE_HIDDEN ; 
 scalar_t__ _SD_BUS_VTABLE_END ; 
 int /*<<< orphan*/  _SD_BUS_VTABLE_PROPERTY ; 
 int /*<<< orphan*/  _SD_BUS_VTABLE_WRITABLE_PROPERTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void FUNC2(FILE *f, const sd_bus_vtable *table) {
        const sd_bus_vtable *i;

        for (i = table; i->type != _SD_BUS_VTABLE_END; i++) {
                if (!FUNC0(i->type, _SD_BUS_VTABLE_PROPERTY, _SD_BUS_VTABLE_WRITABLE_PROPERTY) ||
                    (i->flags & (SD_BUS_VTABLE_DEPRECATED | SD_BUS_VTABLE_HIDDEN)) != 0)
                        continue;

                FUNC1(f, "%s\n", i->x.property.member);
        }
}