#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int size; TYPE_3__* items; } ;
struct TYPE_9__ {TYPE_1__ conf; struct TYPE_9__* next; } ;
typedef  TYPE_2__ vlc_plugin_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_type; } ;
typedef  TYPE_3__ module_config_t ;
struct TYPE_11__ {size_t count; TYPE_3__** list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  confcmp ; 
 TYPE_7__ config ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**,size_t,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__** FUNC3 (size_t,int) ; 
 TYPE_2__* vlc_plugins ; 

int FUNC4 (void)
{
    vlc_plugin_t *p;
    size_t nconf = 0;

    for (p = vlc_plugins; p != NULL; p = p->next)
         nconf += p->conf.size;

    module_config_t **clist = FUNC3 (nconf, sizeof (*clist));
    if (FUNC2(clist == NULL))
        return VLC_ENOMEM;

    nconf = 0;
    for (p = vlc_plugins; p != NULL; p = p->next)
    {
        module_config_t *item, *end;

        for (item = p->conf.items, end = item + p->conf.size;
             item < end;
             item++)
        {
            if (!FUNC0(item->i_type))
                continue; /* ignore hints */
            clist[nconf++] = item;
        }
    }

    FUNC1 (clist, nconf, sizeof (*clist), confcmp);

    config.list = clist;
    config.count = nconf;
    return VLC_SUCCESS;
}