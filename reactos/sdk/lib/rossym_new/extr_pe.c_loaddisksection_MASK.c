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
struct TYPE_8__ {int /*<<< orphan*/  fd; } ;
struct TYPE_7__ {int /*<<< orphan*/  SizeOfRawData; int /*<<< orphan*/  PointerToRawData; } ;
typedef  TYPE_1__ PeSect ;
typedef  TYPE_2__ Pe ;
typedef  int /*<<< orphan*/  DwarfBlock ;

/* Variables and functions */
 TYPE_1__* nil ; 
 TYPE_1__* FUNC0 (TYPE_2__*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(Pe *pe, char *name, DwarfBlock *b)
{
	PeSect *s;
	if((s = FUNC0(pe, name)) == nil)
		return -1;
	return FUNC1(pe->fd, b, s->PointerToRawData, s->SizeOfRawData);
}