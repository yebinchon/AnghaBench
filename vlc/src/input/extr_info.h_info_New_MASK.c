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
struct TYPE_4__ {int /*<<< orphan*/ * psz_value; int /*<<< orphan*/  psz_name; } ;
typedef  TYPE_1__ info_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static inline info_t *FUNC2(const char *name)
{
    info_t *info = FUNC0(sizeof(*info));
    if (!info)
        return NULL;

    info->psz_name = FUNC1(name);
    info->psz_value = NULL;
    return info;
}