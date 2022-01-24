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
struct TYPE_4__ {int /*<<< orphan*/  rw; int /*<<< orphan*/  fstype; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ DissectedPartition ;

/* Variables and functions */
 int /*<<< orphan*/  SPECIAL_LOCAL_FS_TARGET ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(
                DissectedPartition *p,
                const char *id,
                const char *where,
                const char *description) {

        int r;
        FUNC1(p);

        r = FUNC2(where);
        if (r != 0)
                return r < 0 ? r : 0;

        return FUNC0(
                        id,
                        p->node,
                        where,
                        p->fstype,
                        p->rw,
                        NULL,
                        description,
                        SPECIAL_LOCAL_FS_TARGET);
}