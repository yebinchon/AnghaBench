#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t size; TYPE_5__* items; } ;
struct TYPE_10__ {TYPE_1__ conf; struct TYPE_10__* next; } ;
typedef  TYPE_4__ vlc_plugin_t ;
struct TYPE_9__ {int /*<<< orphan*/  psz; int /*<<< orphan*/  f; int /*<<< orphan*/  i; } ;
struct TYPE_8__ {scalar_t__ psz; int /*<<< orphan*/  f; int /*<<< orphan*/  i; } ;
struct TYPE_11__ {TYPE_3__ orig; TYPE_2__ value; int /*<<< orphan*/  i_type; } ;
typedef  TYPE_5__ module_config_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_lock ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* vlc_plugins ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
    FUNC6 (&config_lock);
    for (vlc_plugin_t *p = vlc_plugins; p != NULL; p = p->next)
    {
        for (size_t i = 0; i < p->conf.size; i++ )
        {
            module_config_t *p_config = p->conf.items + i;

            if (FUNC1 (p_config->i_type))
                p_config->value.i = p_config->orig.i;
            else
            if (FUNC0 (p_config->i_type))
                p_config->value.f = p_config->orig.f;
            else
            if (FUNC2 (p_config->i_type))
            {
                FUNC3 ((char *)p_config->value.psz);
                p_config->value.psz =
                        FUNC4 (p_config->orig.psz);
            }
        }
    }
    FUNC5 (&config_lock);
}