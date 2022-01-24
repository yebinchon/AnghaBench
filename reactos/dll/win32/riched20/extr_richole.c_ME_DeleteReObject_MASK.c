#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ polesite; scalar_t__ pstg; scalar_t__ poleobj; } ;
struct re_object {TYPE_1__ obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct re_object*) ; 

void FUNC4(struct re_object *reobj)
{
    if (reobj->obj.poleobj)   FUNC1(reobj->obj.poleobj);
    if (reobj->obj.pstg)      FUNC2(reobj->obj.pstg);
    if (reobj->obj.polesite)  FUNC0(reobj->obj.polesite);
    FUNC3(reobj);
}