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
typedef  int cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  CGATSPatch ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  hIT8in ; 

__attribute__((used)) static
cmsFloat64Number FUNC3(cmsContext ContextID, const char* Name, cmsFloat64Number Max)
{
    const char* Val = FUNC2(ContextID, hIT8in, CGATSPatch, Name);

    if (Val == NULL)
        FUNC0("Field '%s' not found", Name);

    return FUNC1(Val) / Max;

}