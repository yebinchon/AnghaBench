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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {scalar_t__ imagesize; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ *) ; 
 TYPE_1__ ih ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char) ; 
 scalar_t__ vaddr ; 

__attribute__((used)) static void FUNC4(char n)
{
    char buf[100];
#ifdef __linux__
    FUNC3(buf, sizeof(buf), "a.dump%c", n);
#else
    snprintf(buf, sizeof(buf), "/a.dump%c", n);
#endif
    FILE *f2 = FUNC1(buf, "wb");
    FUNC2(vaddr + 0x1000, ih.imagesize - 0x1000, 1, f2);
    FUNC0(f2);
}