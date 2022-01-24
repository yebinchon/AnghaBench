#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ulong ;
struct TYPE_18__ {scalar_t__ haskids; int /*<<< orphan*/  tag; } ;
struct TYPE_17__ {int /*<<< orphan*/ * p; int /*<<< orphan*/ * ep; } ;
struct TYPE_14__ {int /*<<< orphan*/ * data; } ;
struct TYPE_16__ {TYPE_1__ info; } ;
struct TYPE_15__ {int /*<<< orphan*/ * childoff; TYPE_5__ b; TYPE_6__ attrs; int /*<<< orphan*/  unit; int /*<<< orphan*/  aoff; scalar_t__ num; } ;
typedef  TYPE_2__ DwarfSym ;
typedef  int /*<<< orphan*/  DwarfAbbrev ;
typedef  TYPE_3__ Dwarf ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (TYPE_3__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * nil ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,...) ; 

int
FUNC5(Dwarf *d, DwarfSym *s)
{
    ulong num;
    DwarfAbbrev *a;

    FUNC4("sym at %x (left %x)\n", s->b.p - d->info.data, s->b.ep - s->b.p);

    num = FUNC0(&s->b);
    FUNC4("abbrev num %x\n", num);
    s->num = num;
    if(num == 0){
        return -1;
    }

    a = FUNC1(d, s->aoff, num);
    FUNC4("a %p\n", a);
    if(a == nil){
        FUNC4("getabbrev %x %x for %x", s->aoff, num, s->unit);
        return -1;
    }

    if(FUNC3(d, &s->b, s->attrs.tag, s->unit, a, &s->attrs) < 0) {
        return -1;
    }

    if (s->attrs.haskids) {
        DwarfSym childSkip = { };
        s->childoff = s->b.p - d->info.data;
        FUNC4("Set childoff at %x\n", s->childoff);
        int r = FUNC2(d, s, &childSkip);
        while (r == 0) {
            r = FUNC5(d, &childSkip);
        }
        s->b = childSkip.b;
    } else {
        s->childoff = 0;
    }
    return 0;
}