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
struct TYPE_6__ {int type; char* name; struct TYPE_6__* next; } ;
typedef  TYPE_1__ FDSC ;

/* Variables and functions */
 unsigned char DELETED_FLAG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  fdt_drop 129 
#define  fdt_undelete 128 
 TYPE_1__** FUNC1 (TYPE_1__**,char*) ; 
 char* FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

void FUNC5(FDSC ** curr, char *fixed)
{
    FDSC **this, *next;

    if (!(this = FUNC1(curr, fixed)))
	FUNC0("Internal error: file_find failed");
    switch ((*this)->type) {
    case fdt_drop:
	FUNC4("Dropping %s\n", FUNC2((unsigned char *)fixed));
	*(unsigned char *)fixed = DELETED_FLAG;
	break;
    case fdt_undelete:
	*fixed = *(*this)->name;
	FUNC4("Undeleting %s\n", FUNC2((unsigned char *)fixed));
	break;
    default:
	FUNC0("Internal error: file_modify");
    }
    next = (*this)->next;
    FUNC3(*this);
    *this = next;
}