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
typedef  int /*<<< orphan*/  nsICommandParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IID_nsICommandParams ; 
 int /*<<< orphan*/  NS_COMMANDPARAMS_CONTRACTID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  pCompMgr ; 

nsICommandParams *FUNC3(void)
{
    nsICommandParams *ret = NULL;
    nsresult nsres;

    if(!pCompMgr)
        return NULL;

    nsres = FUNC2(pCompMgr,
            NS_COMMANDPARAMS_CONTRACTID, NULL, &IID_nsICommandParams,
            (void**)&ret);
    if(FUNC1(nsres))
        FUNC0("Could not get nsICommandParams\n");

    return ret;
}