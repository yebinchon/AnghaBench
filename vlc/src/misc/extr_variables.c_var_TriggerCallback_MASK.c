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
struct TYPE_7__ {int /*<<< orphan*/  var_lock; } ;
typedef  TYPE_1__ vlc_object_internals_t ;
struct TYPE_8__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_2__ variable_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void (FUNC5)(vlc_object_t *p_this, const char *psz_name)
{
    vlc_object_internals_t *p_priv = FUNC3( p_this );
    variable_t *p_var = FUNC0( p_this, psz_name );
    if( p_var != NULL )
    {
        FUNC2( p_this, p_var );

        /* Deal with callbacks. Tell we're in a callback, release the lock,
         * call stored functions, retake the lock. */
        FUNC1( p_this, p_var, psz_name, p_var->val );
    }
    FUNC4( &p_priv->var_lock );
}