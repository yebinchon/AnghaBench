#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {TYPE_1__* data; } ;
struct TYPE_26__ {scalar_t__ (* loadsection ) (TYPE_1__*,char*,TYPE_4__*) ;TYPE_4__ loc; TYPE_4__ info; TYPE_4__ str; TYPE_4__ ranges; TYPE_4__ pubnames; TYPE_4__ line; TYPE_4__ frame; TYPE_4__ aranges; TYPE_4__ abbrev; struct TYPE_26__* pe; } ;
typedef  TYPE_1__ Pe ;
typedef  TYPE_1__ Dwarf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 TYPE_1__* nil ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*,TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char*,TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char*,TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char*,TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,char*,TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char*,TYPE_4__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,char*,TYPE_4__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,char*,TYPE_4__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

Dwarf*
FUNC13(Pe *pe)
{
	Dwarf *d;

	if(pe == nil){
		FUNC12("nil pe passed to dwarfopen");
		return nil;
	}

	d = FUNC2(sizeof(Dwarf), 1);
	if(d == nil)
		return nil;

	d->pe = pe;
	if(pe->loadsection(pe, ".debug_abbrev", &d->abbrev) < 0
	|| pe->loadsection(pe, ".debug_aranges", &d->aranges) < 0
	|| pe->loadsection(pe, ".debug_line", &d->line) < 0
	|| pe->loadsection(pe, ".debug_info", &d->info) < 0
    || pe->loadsection(pe, ".debug_loc", &d->loc) < 0)
		goto err;
	pe->loadsection(pe, ".debug_pubnames", &d->pubnames);
	pe->loadsection(pe, ".debug_frame", &d->frame);
	pe->loadsection(pe, ".debug_ranges", &d->ranges);
	pe->loadsection(pe, ".debug_str", &d->str);

	return d;

err:
	FUNC0("Failed to open dwarf\n");
	FUNC1(d->abbrev.data);
	FUNC1(d->aranges.data);
	FUNC1(d->frame.data);
	FUNC1(d->line.data);
	FUNC1(d->pubnames.data);
	FUNC1(d->ranges.data);
	FUNC1(d->str.data);
	FUNC1(d->info.data);
    FUNC1(d->loc.data);
	FUNC1(d);
	return nil;
}