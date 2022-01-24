#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {int /*<<< orphan*/  var_lock; } ;
typedef  TYPE_1__ vlc_object_internals_t ;
typedef  scalar_t__ vlc_callback_type_t ;
struct TYPE_10__ {TYPE_3__* list_callbacks; TYPE_3__* value_callbacks; } ;
typedef  TYPE_2__ variable_t ;
struct TYPE_11__ {struct TYPE_11__* next; int /*<<< orphan*/  p_callback; } ;
typedef  TYPE_3__ callback_entry_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ vlc_value_callback ; 

__attribute__((used)) static void FUNC7( vlc_object_t *p_this, const char *psz_name,
                         callback_entry_t *restrict entry,
                         vlc_callback_type_t i_type )
{
    variable_t *p_var;

    FUNC2( p_this );

    vlc_object_internals_t *p_priv = FUNC5( p_this );

    p_var = FUNC0( p_this, psz_name );
    if( p_var == NULL )
    {
        FUNC6( &p_priv->var_lock );
        FUNC4( p_this, "cannot add callback %p to nonexistent variable '%s'",
                 entry->p_callback, psz_name );
        FUNC3( entry );
        return;
    }

    FUNC1( p_this, p_var );

    callback_entry_t **pp;

    if (i_type == vlc_value_callback)
        pp = &p_var->value_callbacks;
    else
        pp = &p_var->list_callbacks;

    entry->next = *pp;
    *pp = entry;

    FUNC6( &p_priv->var_lock );
}