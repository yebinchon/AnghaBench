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
struct TYPE_3__ {int /*<<< orphan*/  name11_12; int /*<<< orphan*/  name5_10; int /*<<< orphan*/  name0_4; } ;
typedef  TYPE_1__ LFN_ENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(unsigned char *dst, LFN_ENT * lfn)
{
    FUNC0(dst, lfn->name0_4, 10);
    FUNC0(dst + 10, lfn->name5_10, 12);
    FUNC0(dst + 22, lfn->name11_12, 4);
}