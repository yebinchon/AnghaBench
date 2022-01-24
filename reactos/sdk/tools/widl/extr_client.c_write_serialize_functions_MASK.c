#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  attrs; } ;
typedef  TYPE_1__ type_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_DECODE ; 
 int /*<<< orphan*/  ATTR_ENCODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*,TYPE_1__ const*,char*,char*) ; 

void FUNC2(FILE *file, const type_t *type, const type_t *iface)
{
    if (FUNC0(type->attrs, ATTR_ENCODE))
    {
        FUNC1(file, type, iface, "AlignSize", "SIZE_T");
        FUNC1(file, type, iface, "Encode", NULL);
    }
    if (FUNC0(type->attrs, ATTR_DECODE))
    {
        FUNC1(file, type, iface, "Decode", NULL);
        FUNC1(file, type, iface, "Free", NULL);
    }
}