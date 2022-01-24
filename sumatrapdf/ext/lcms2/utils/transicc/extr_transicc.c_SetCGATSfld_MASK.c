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
typedef  scalar_t__ cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  CGATSPatch ; 
 int /*<<< orphan*/  CGATSoutFilename ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  hIT8out ; 
 scalar_t__ lQuantize ; 

__attribute__((used)) static
void FUNC3(cmsContext ContextID, const char* Col, cmsFloat64Number Val)
{
    if (lQuantize)
        Val = FUNC2(Val + 0.5);

    if (!FUNC1(ContextID, hIT8out, CGATSPatch, Col, Val)) {
        FUNC0("couldn't set '%s' on output cgats '%s'", Col, CGATSoutFilename);
    }
}