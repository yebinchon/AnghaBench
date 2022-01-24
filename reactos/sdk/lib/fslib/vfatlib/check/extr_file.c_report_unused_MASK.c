#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; scalar_t__ name; struct TYPE_4__* first; struct TYPE_4__* next; } ;
typedef  TYPE_1__ FDSC ;

/* Variables and functions */
 scalar_t__ fdt_drop ; 
 scalar_t__ fdt_none ; 
 char* FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static void FUNC3(FDSC * this)
{
    FDSC *next;

    while (this) {
	next = this->next;
	if (this->first)
	    FUNC3(this->first);
	else if (this->type != fdt_none)
	    FUNC2("Warning: did not %s file %s\n", this->type == fdt_drop ?
		   "drop" : "undelete", FUNC0((unsigned char *)this->name));
	FUNC1(this);
	this = next;
    }
}