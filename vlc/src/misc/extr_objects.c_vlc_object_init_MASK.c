#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int force; int no_interact; int /*<<< orphan*/ * logger; TYPE_2__* priv; } ;
typedef  TYPE_1__ vlc_object_t ;
struct TYPE_7__ {char const* typename; int /*<<< orphan*/ * resources; int /*<<< orphan*/  var_wait; int /*<<< orphan*/  var_lock; int /*<<< orphan*/ * var_root; TYPE_1__* parent; } ;
typedef  TYPE_2__ vlc_object_internals_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(vlc_object_t *restrict obj, vlc_object_t *parent,
                    const char *typename)
{
    vlc_object_internals_t *priv = FUNC1(sizeof (*priv));
    if (FUNC2(priv == NULL))
        return -1;

    priv->parent = parent;
    priv->typename = typename;
    priv->var_root = NULL;
    FUNC4 (&priv->var_lock);
    FUNC3 (&priv->var_wait);
    priv->resources = NULL;

    obj->priv = priv;
    obj->force = false;

    if (FUNC0(parent != NULL))
    {
        obj->logger = parent->logger;
        obj->no_interact = parent->no_interact;
    }
    else
    {
        obj->logger = NULL;
        obj->no_interact = false;
    }

    return 0;
}