#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_9__* data; } ;
struct TYPE_13__ {TYPE_9__* data; } ;
struct TYPE_12__ {TYPE_9__* data; } ;
struct TYPE_19__ {TYPE_9__* data; } ;
struct TYPE_18__ {TYPE_9__* data; } ;
struct TYPE_17__ {TYPE_9__* data; } ;
struct TYPE_16__ {TYPE_9__* data; } ;
struct TYPE_15__ {TYPE_9__* data; } ;
struct TYPE_20__ {int /*<<< orphan*/  pe; TYPE_3__ info; TYPE_2__ str; TYPE_1__ ranges; TYPE_8__ pubnames; TYPE_7__ line; TYPE_6__ frame; TYPE_5__ aranges; TYPE_4__ abbrev; } ;
typedef  TYPE_9__ Dwarf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(Dwarf *d)
{
	FUNC0(d->abbrev.data);
	FUNC0(d->aranges.data);
	FUNC0(d->frame.data);
	FUNC0(d->line.data);
	FUNC0(d->pubnames.data);
	FUNC0(d->ranges.data);
	FUNC0(d->str.data);
	FUNC0(d->info.data);
	FUNC1(d->pe);
	FUNC0(d);
}