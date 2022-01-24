#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uchar ;
struct TYPE_2__ {int /*<<< orphan*/  b; int /*<<< orphan*/  s; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ DwarfVal ;
typedef  int /*<<< orphan*/  DwarfBuf ;
typedef  int /*<<< orphan*/  Dwarf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC4(Dwarf *d, DwarfBuf *b, int form)
{
    int type;
    DwarfVal val;

    if(FUNC3(b, form, 0, &val.c, &type) < 0
       && FUNC2(b, form, (uchar*)&val) < 0
       && FUNC1(d, b, form, &val.s) < 0
       && FUNC0(b, form, &val.b) < 0)
        return -1;
    return 0;
}