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
typedef  scalar_t__ ulong ;
struct TYPE_7__ {scalar_t__ tag; scalar_t__ lowpc; scalar_t__ highpc; } ;
struct TYPE_8__ {TYPE_1__ attrs; } ;
typedef  TYPE_2__ DwarfSym ;
typedef  int /*<<< orphan*/  Dwarf ;

/* Variables and functions */
 scalar_t__ TagSubprogram ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

int
FUNC3(Dwarf *d, ulong unit, ulong pc, DwarfSym *s)
{
    DwarfSym compunit = { };
    if(FUNC0(d, unit, &compunit) < 0)
        return -1;
    while(FUNC1(d, &compunit, s) == 0){
        if(s->attrs.tag != TagSubprogram)
            continue;
        if(s->attrs.lowpc <= pc && pc < s->attrs.highpc)
            return 0;
    }
    FUNC2("fn containing pc 0x%lux not found", pc);
    return -1;
}