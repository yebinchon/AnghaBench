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
struct TYPE_7__ {int /*<<< orphan*/  var_lock; } ;
typedef  TYPE_2__ vlc_object_internals_t ;
struct TYPE_8__ {int i_type; TYPE_1__* ops; int /*<<< orphan*/  val; } ;
typedef  TYPE_3__ variable_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* pf_dup ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int VLC_ENOVAR ; 
 int VLC_SUCCESS ; 
 int VLC_VAR_CLASS ; 
 int VLC_VAR_VOID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int (FUNC5)(vlc_object_t *p_this, const char *psz_name,
                     int expected_type, vlc_value_t *p_val)
{
    FUNC1( *p_this );

    vlc_object_internals_t *p_priv = FUNC3( p_this );
    variable_t *p_var;
    int err = VLC_SUCCESS;

    p_var = FUNC0( p_this, psz_name );
    if( p_var != NULL )
    {
        FUNC1( expected_type == 0 ||
                (p_var->i_type & VLC_VAR_CLASS) == expected_type );
        FUNC1 ((p_var->i_type & VLC_VAR_CLASS) != VLC_VAR_VOID);

        /* Really get the variable */
        *p_val = p_var->val;

        /* Duplicate value if needed */
        p_var->ops->pf_dup( p_val );
    }
    else
        err = VLC_ENOVAR;

    FUNC4( &p_priv->var_lock );
    return err;
}