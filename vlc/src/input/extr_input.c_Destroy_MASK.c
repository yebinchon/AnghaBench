#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_4__ {size_t i_control; int /*<<< orphan*/  lock_control; int /*<<< orphan*/  wait_control; TYPE_2__* control; int /*<<< orphan*/ * stats; int /*<<< orphan*/  p_item; int /*<<< orphan*/ * p_resource; int /*<<< orphan*/ * p_es_out_display; int /*<<< orphan*/ * p_renderer; } ;
typedef  TYPE_1__ input_thread_private_t ;
struct TYPE_5__ {int /*<<< orphan*/  param; int /*<<< orphan*/  i_type; } ;
typedef  TYPE_2__ input_control_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(input_thread_t *input)
{
    input_thread_private_t *priv = FUNC6(input);

#ifndef NDEBUG
    char *name = FUNC4(priv->p_item);
    FUNC9(input, "destroying input for '%s'", name);
    FUNC3(name);
#endif

    if (priv->p_renderer != NULL)
        FUNC13(priv->p_renderer);
    if (priv->p_es_out_display != NULL)
        FUNC2(priv->p_es_out_display);

    if (priv->p_resource != NULL)
        FUNC7(priv->p_resource);

    FUNC5(priv->p_item);

    if (priv->stats != NULL)
        FUNC8(priv->stats);

    for (size_t i = 0; i < priv->i_control; i++)
    {
        input_control_t *ctrl = &priv->control[i];

        FUNC0(ctrl->i_type, &ctrl->param);
    }

    FUNC10(&priv->wait_control);
    FUNC11(&priv->lock_control);
    FUNC12(FUNC1(input));
}