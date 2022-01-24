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
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_5__ {int /*<<< orphan*/ * Offsets; } ;
struct TYPE_4__ {TYPE_2__ DisplayValue; TYPE_2__ DisplayName; TYPE_2__ Value; TYPE_2__ Name; } ;
typedef  TYPE_1__ _cmsDICarray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static
void FUNC1(cmsContext ContextID, _cmsDICarray* a)
{
    if (a ->Name.Offsets != NULL) FUNC0(ContextID, &a->Name);
    if (a ->Value.Offsets != NULL) FUNC0(ContextID, &a ->Value);
    if (a ->DisplayName.Offsets != NULL) FUNC0(ContextID, &a->DisplayName);
    if (a ->DisplayValue.Offsets != NULL) FUNC0(ContextID, &a ->DisplayValue);
}