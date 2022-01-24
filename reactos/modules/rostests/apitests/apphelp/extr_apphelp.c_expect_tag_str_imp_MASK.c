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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {scalar_t__ flags; int /*<<< orphan*/  const* lpattr; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  TAG ;
typedef  TYPE_1__* PATTRINFO ;
typedef  size_t DWORD ;

/* Variables and functions */
 scalar_t__ ATTRIBUTE_AVAILABLE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,size_t,scalar_t__,...) ; 

__attribute__((used)) static void FUNC4(PATTRINFO pattr, TAG tag, const WCHAR* value)
{
    DWORD num = FUNC0(tag);
    PATTRINFO p;

    if (num == ~0)
        return;

    p = &pattr[num];
    FUNC3(p->type == tag, "expected entry #%d to be %x, was %x\n", num, tag, p->type);
    FUNC3(p->flags == ATTRIBUTE_AVAILABLE, "expected entry #%d to be available, was %d\n", num, p->flags);
    FUNC3(p->lpattr && FUNC1(p->lpattr, value) == 0, "expected entry #%d to be %s, was %s\n", num, FUNC2(value), FUNC2(p->lpattr));
}