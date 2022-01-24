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
struct TYPE_4__ {int /*<<< orphan*/  extension_on_cd; int /*<<< orphan*/  name_on_cd; } ;
typedef  TYPE_1__* PDIR_RECORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(PDIR_RECORD p, PDIR_RECORD q)
{
    int n = FUNC0(p->name_on_cd, q->name_on_cd);
    if (n == 0)
        n = FUNC0(p->extension_on_cd, q->extension_on_cd);
    return n;
}