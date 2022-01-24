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
typedef  double cmsFloat64Number ;
typedef  void const* cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  cmsSigMultiLocalizedUnicodeType ; 
 int /*<<< orphan*/  cmsSigTextType ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 

__attribute__((used)) static
cmsTagTypeSignature FUNC1(cmsContext ContextID, cmsFloat64Number ICCVersion, const void *Data)
{
    FUNC0(ContextID);
    if (ICCVersion >= 4.0)
        return cmsSigMultiLocalizedUnicodeType;

    return cmsSigTextType;

    FUNC0(Data);
}