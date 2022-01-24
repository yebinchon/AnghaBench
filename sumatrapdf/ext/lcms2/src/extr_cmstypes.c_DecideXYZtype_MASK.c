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
typedef  int /*<<< orphan*/  cmsTagTypeSignature ;
typedef  void const* cmsFloat64Number ;
typedef  void const* cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  cmsSigXYZType ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 

__attribute__((used)) static
cmsTagTypeSignature FUNC1(cmsContext ContextID, cmsFloat64Number ICCVersion, const void *Data)
{
    return cmsSigXYZType;

    FUNC0(ICCVersion);
    FUNC0(Data);
    FUNC0(ContextID);
}