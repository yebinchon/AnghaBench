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
typedef  int /*<<< orphan*/  cmsUInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void  FUNC3(cmsUInt32Number Format,
                                 cmsUInt32Number BytesPerPlane,
                                 cmsUInt32Number ComponentStartingOrder[],
                                 cmsUInt32Number ComponentPointerIncrements[])
{
       if (FUNC2(Format)) {

              FUNC1(Format,  BytesPerPlane, ComponentStartingOrder, ComponentPointerIncrements);
       }
       else {
              FUNC0(Format,  ComponentStartingOrder, ComponentPointerIncrements);
       }

}