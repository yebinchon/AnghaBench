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
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_4__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ cmsCIEXYZ ;
struct TYPE_5__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC2(cmsContext ContextID, cmsIOHANDLER* m, cmsCIEXYZ* BlackPoint)
{

    FUNC0(ContextID, m, "/BlackPoint [%f %f %f]\n", BlackPoint -> X,
                                          BlackPoint -> Y,
                                          BlackPoint -> Z);

    FUNC0(ContextID, m, "/WhitePoint [%f %f %f]\n", FUNC1(ContextID)->X,
                                          FUNC1(ContextID)->Y,
                                          FUNC1(ContextID)->Z);
}