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
struct TYPE_3__ {int /*<<< orphan*/ * shader; int /*<<< orphan*/ * layout; } ;
typedef  TYPE_1__ d3d_vshader_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(d3d_vshader_t *shader)
{
    if (shader->layout)
    {
        FUNC0(shader->layout);
        shader->layout = NULL;
    }
    if (shader->shader)
    {
        FUNC1(shader->shader);
        shader->shader = NULL;
    }
}