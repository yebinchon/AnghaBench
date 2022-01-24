#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {int /*<<< orphan*/  var_lock; int /*<<< orphan*/  var_wait; } ;
typedef  TYPE_1__ vlc_object_internals_t ;
struct TYPE_6__ {scalar_t__ b_incallback; } ;
typedef  TYPE_2__ variable_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(vlc_object_t *obj, variable_t *var)
{
    vlc_object_internals_t *priv = FUNC3(obj);

    FUNC0(&priv->var_lock);
    while (var->b_incallback)
        FUNC2(&priv->var_wait, &priv->var_lock);
    FUNC1();
}