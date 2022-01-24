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
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIContentSerializer ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IID_nsIContentSerializer ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_HTMLSERIALIZER_CONTRACTID ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pCompMgr ; 

HRESULT FUNC8(nsIDOMNode *nsnode, nsAString *str)
{
    nsIContentSerializer *serializer;
    nsresult nsres;
    HRESULT hres;

    nsres = FUNC3(pCompMgr,
            NS_HTMLSERIALIZER_CONTRACTID, NULL, &IID_nsIContentSerializer,
            (void**)&serializer);
    if(FUNC1(nsres)) {
        FUNC0("Could not get nsIContentSerializer: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = FUNC5(serializer, 0, 100, NULL, FALSE, FALSE /* FIXME */);
    if(FUNC1(nsres))
        FUNC0("Init failed: %08x\n", nsres);

    hres = FUNC7(serializer, nsnode, str);
    if(FUNC2(hres)) {
        nsres = FUNC4(serializer, str);
        if(FUNC1(nsres))
            FUNC0("Flush failed: %08x\n", nsres);
    }

    FUNC6(serializer);
    return hres;
}