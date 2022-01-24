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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {int /*<<< orphan*/ * inhibit; int /*<<< orphan*/ * p_sys; } ;
typedef  TYPE_1__ vlc_inhibit_t ;
struct TYPE_8__ {int /*<<< orphan*/ * module; TYPE_1__ ih; } ;
typedef  TYPE_2__ inhibit_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

vlc_inhibit_t *FUNC3 (vlc_object_t *parent)
{
    inhibit_t *priv = FUNC1 (parent, sizeof (*priv), "inhibit" );
    if (priv == NULL)
        return NULL;

    vlc_inhibit_t *ih = &priv->ih;
    ih->p_sys = NULL;
    ih->inhibit = NULL;

    priv->module = FUNC0 (ih, "inhibit", NULL, false);
    if (priv->module == NULL)
    {
        FUNC2(ih);
        ih = NULL;
    }
    return ih;
}