#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t modc; int /*<<< orphan*/  modv; } ;
typedef  TYPE_1__ vlc_modcap_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_4__ {int /*<<< orphan*/  caps_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ modules ; 
 void** FUNC1 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  vlc_modcap_cmp ; 

ssize_t FUNC4 (module_t ***restrict list, const char *name)
{
    const void **cp = FUNC1(&name, &modules.caps_tree, vlc_modcap_cmp);
    if (cp == NULL)
    {
        *list = NULL;
        return 0;
    }

    const vlc_modcap_t *cap = *cp;
    size_t n = cap->modc;
    module_t **tab = FUNC3 (n, sizeof (*tab));
    *list = tab;
    if (FUNC2(tab == NULL))
        return -1;

    FUNC0(tab, cap->modv, sizeof (*tab) * n);
    return n;
}