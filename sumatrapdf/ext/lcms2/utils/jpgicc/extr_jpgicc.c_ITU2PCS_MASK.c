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
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  void* cmsContext ;
typedef  int /*<<< orphan*/  cmsCIELab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC3(cmsContext ContextID, register const cmsUInt16Number In[], register cmsUInt16Number Out[], register void*  Cargo)
{
    cmsCIELab Lab;

    FUNC0(In, &Lab);
    FUNC2(NULL, Out, &Lab);
    return TRUE;

    FUNC1(Cargo);
    FUNC1(ContextID);
}