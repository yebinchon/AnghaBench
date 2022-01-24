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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIWritableVariant ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IID_nsIWritableVariant ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_VARIANT_CONTRACTID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  pCompMgr ; 

nsIWritableVariant *FUNC3(void)
{
    nsIWritableVariant *ret = NULL;
    nsresult nsres;

    if(!pCompMgr)
        return NULL;

    nsres = FUNC2(pCompMgr,
            NS_VARIANT_CONTRACTID, NULL, &IID_nsIWritableVariant, (void**)&ret);
    if(FUNC1(nsres))
        FUNC0("Could not get nsIVariant\n");

    return ret;
}