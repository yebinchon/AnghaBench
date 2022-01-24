#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_3__ {int /*<<< orphan*/  var_root; int /*<<< orphan*/  var_lock; } ;
typedef  TYPE_1__ vlc_object_internals_t ;
typedef  void variable_t ;

/* Variables and functions */
 void** FUNC0 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  varcmp ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static variable_t *FUNC3( vlc_object_t *obj, const char *psz_name )
{
    vlc_object_internals_t *priv = FUNC1( obj );
    void **pp_var;

    FUNC2(&priv->var_lock);
    pp_var = FUNC0( &psz_name, &priv->var_root, varcmp );
    return (pp_var != NULL) ? *pp_var : NULL;
}