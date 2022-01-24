#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_value_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {int /*<<< orphan*/  var_wait; int /*<<< orphan*/  var_lock; } ;
typedef  TYPE_1__ vlc_object_internals_t ;
struct TYPE_7__ {int b_incallback; TYPE_3__* list_callbacks; } ;
typedef  TYPE_2__ variable_t ;
struct TYPE_8__ {struct TYPE_8__* next; int /*<<< orphan*/  p_data; int /*<<< orphan*/  (* pf_list_callback ) (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ callback_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(vlc_object_t *obj, variable_t *var,
                                const char *name, int action, vlc_value_t *val)
{
    FUNC0(obj != NULL);

    callback_entry_t *entry = var->list_callbacks;
    if (entry == NULL)
        return;

    vlc_object_internals_t *priv = FUNC3(obj);

    FUNC0(!var->b_incallback);
    var->b_incallback = true;
    FUNC5(&priv->var_lock);

    do
    {
        entry->pf_list_callback(obj, name, action, val, entry->p_data);
        entry = entry->next;
    }
    while (entry != NULL);

    FUNC4(&priv->var_lock);
    var->b_incallback = false;
    FUNC2(&priv->var_wait);
}