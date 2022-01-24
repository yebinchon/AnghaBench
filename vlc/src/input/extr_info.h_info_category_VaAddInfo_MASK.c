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
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_8__ {int /*<<< orphan*/ * psz_value; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ info_t ;
struct TYPE_9__ {int /*<<< orphan*/  infos; } ;
typedef  TYPE_2__ info_category_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline info_t *FUNC5(info_category_t *cat,
                                              const char *name,
                                              const char *format, va_list args)
{
    info_t *info = FUNC2(cat, name);
    if (!info) {
        info = FUNC1(name);
        if (!info)
            return NULL;
        FUNC4(&info->node, &cat->infos);
    } else
        FUNC0(info->psz_value);
    if (FUNC3(&info->psz_value, format, args) == -1)
        info->psz_value = NULL;
    return info;
}