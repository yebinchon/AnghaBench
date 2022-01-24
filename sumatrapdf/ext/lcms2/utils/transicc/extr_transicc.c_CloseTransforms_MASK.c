#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 scalar_t__ InputColorant ; 
 scalar_t__ OutputColorant ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ hTrans ; 
 scalar_t__ hTransLab ; 
 scalar_t__ hTransXYZ ; 

__attribute__((used)) static
void FUNC2(cmsContext ContextID)
{
    if (InputColorant) FUNC1(ContextID, InputColorant);
    if (OutputColorant) FUNC1(ContextID, OutputColorant);

    if (hTrans) FUNC0(ContextID, hTrans);
    if (hTransLab) FUNC0(ContextID, hTransLab);
    if (hTransXYZ) FUNC0(ContextID, hTransXYZ);

}