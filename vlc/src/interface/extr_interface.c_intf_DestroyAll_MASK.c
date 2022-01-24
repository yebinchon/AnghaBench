#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; TYPE_2__* interfaces; } ;
typedef  TYPE_1__ libvlc_priv_t ;
typedef  int /*<<< orphan*/  libvlc_int_t ;
struct TYPE_8__ {int /*<<< orphan*/  p_cfg; int /*<<< orphan*/  p_module; struct TYPE_8__* p_next; } ;
typedef  TYPE_2__ intf_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  AddIntfCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void FUNC7(libvlc_int_t *libvlc)
{
    libvlc_priv_t *priv = FUNC1(libvlc);

    FUNC4(&priv->lock);
    intf_thread_t *intf, **pp = &priv->interfaces;

    while ((intf = *pp) != NULL)
    {
        *pp = intf->p_next;
        FUNC5(&priv->lock);

        FUNC2(intf, intf->p_module);
        FUNC0(intf->p_cfg);
        FUNC3(intf, "intf-add", AddIntfCallback, NULL);
        FUNC6(intf);

        FUNC4(&priv->lock);
    }
    FUNC5(&priv->lock);
}