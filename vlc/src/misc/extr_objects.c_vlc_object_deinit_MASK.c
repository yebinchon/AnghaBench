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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {int /*<<< orphan*/  var_lock; int /*<<< orphan*/  var_wait; int /*<<< orphan*/ * resources; } ;
typedef  TYPE_1__ vlc_object_internals_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 

void FUNC8(vlc_object_t *obj)
{
    vlc_object_internals_t *priv = FUNC4(obj);

    FUNC0(priv->resources == NULL);

    /* Destroy the associated variables. */
    int canc = FUNC7();
    FUNC2(obj);
    FUNC6(canc);

    FUNC3(&priv->var_wait);
    FUNC5(&priv->var_lock);
    FUNC1(priv);
}