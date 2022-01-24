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
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  nsIInterfaceRequestor ;
typedef  int /*<<< orphan*/  REFIID ;

/* Variables and functions */
 int /*<<< orphan*/  IID_nsIInterfaceRequestor ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 

nsresult FUNC4(nsISupports *iface, REFIID riid, void **ppv)
{
    nsIInterfaceRequestor *iface_req;
    nsresult nsres;

    nsres = FUNC3(iface, &IID_nsIInterfaceRequestor, (void**)&iface_req);
    if(FUNC0(nsres))
        return nsres;

    nsres = FUNC1(iface_req, riid, ppv);
    FUNC2(iface_req);

    return nsres;
}