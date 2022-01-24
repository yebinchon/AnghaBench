#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  node; int /*<<< orphan*/  psz_name; } ;
typedef  TYPE_1__ info_t ;
struct TYPE_9__ {int /*<<< orphan*/  infos; } ;
typedef  TYPE_2__ info_category_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(info_category_t *cat,
                                             info_t *info)
{
    info_t *old = FUNC1(cat, info->psz_name);
    if (old) {
        FUNC3(&old->node);
        FUNC0(old);
    }
    FUNC2(&info->node, &cat->infos);
}