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
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 scalar_t__ MAXPSCOLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ _cmsPSActualColumn ; 

__attribute__((used)) static
void FUNC1(cmsContext ContextID, cmsIOHANDLER* m, cmsUInt8Number b)
{
    FUNC0(ContextID, m, "%02x", b);
    _cmsPSActualColumn += 2;

    if (_cmsPSActualColumn > MAXPSCOLS) {

        FUNC0(ContextID, m, "\n");
        _cmsPSActualColumn = 0;
    }
}