#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* p_priv; } ;
typedef  TYPE_3__ addons_manager_t ;
struct TYPE_5__ {int b_live; int /*<<< orphan*/  lock; int /*<<< orphan*/  waitcond; } ;
struct TYPE_4__ {TYPE_2__ finder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( void* p_data )
{
    addons_manager_t *p_manager = p_data;
    FUNC1( &p_manager->p_priv->finder.lock );
    p_manager->p_priv->finder.b_live = false;
    FUNC0( &p_manager->p_priv->finder.waitcond );
    FUNC2( &p_manager->p_priv->finder.lock );
}