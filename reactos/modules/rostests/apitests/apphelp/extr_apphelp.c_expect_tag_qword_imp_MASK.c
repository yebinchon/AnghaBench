#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ type; scalar_t__ flags; scalar_t__ qwattr; } ;
typedef  scalar_t__ TAG ;
typedef  scalar_t__ QWORD ;
typedef  TYPE_1__* PATTRINFO ;
typedef  size_t DWORD ;

/* Variables and functions */
 scalar_t__ ATTRIBUTE_AVAILABLE ; 
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,size_t,scalar_t__,...) ; 

__attribute__((used)) static void FUNC2(PATTRINFO pattr, TAG tag, QWORD value)
{
    DWORD num = FUNC0(tag);
    PATTRINFO p;

    if (num == ~0)
        return;

    p = &pattr[num];
    FUNC1(p->type == tag, "expected entry #%d to be %x, was %x\n", num, tag, p->type);
    FUNC1(p->flags == ATTRIBUTE_AVAILABLE, "expected entry #%d to be available, was %d\n", num, p->flags);
    FUNC1(p->qwattr == value, "expected entry #%d to be 0x%I64x, was 0x%I64x\n", num, value, p->qwattr);
}