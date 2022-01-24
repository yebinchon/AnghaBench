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
struct TYPE_7__ {int /*<<< orphan*/  var_lock; int /*<<< orphan*/  var_root; } ;
typedef  TYPE_1__ vlc_object_internals_t ;
struct TYPE_8__ {scalar_t__ i_usage; int /*<<< orphan*/  b_incallback; } ;
typedef  TYPE_2__ variable_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  varcmp ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void (FUNC7)(vlc_object_t *p_this, const char *psz_name)
{
    variable_t *p_var;

    FUNC2( *p_this );

    vlc_object_internals_t *p_priv = FUNC5( p_this );

    p_var = FUNC1( p_this, psz_name );
    if( p_var == NULL )
        FUNC3( p_this, "attempt to destroy nonexistent variable \"%s\"",
                 psz_name );
    else if( --p_var->i_usage == 0 )
    {
        FUNC2(!p_var->b_incallback);
        FUNC4( p_var, &p_priv->var_root, varcmp );
    }
    else
    {
        FUNC2(p_var->i_usage != -1u);
        p_var = NULL;
    }
    FUNC6( &p_priv->var_lock );

    if( p_var != NULL )
        FUNC0( p_var );
}