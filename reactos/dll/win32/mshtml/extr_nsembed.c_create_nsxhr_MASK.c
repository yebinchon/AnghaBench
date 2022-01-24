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
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIXMLHttpRequest ;
typedef  int /*<<< orphan*/  nsIScriptSecurityManager ;
typedef  int /*<<< orphan*/  nsIPrincipal ;
typedef  int /*<<< orphan*/  nsIGlobalObject ;
typedef  int /*<<< orphan*/  nsIDOMWindow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  IID_nsIGlobalObject ; 
 int /*<<< orphan*/  IID_nsIScriptSecurityManager ; 
 int /*<<< orphan*/  IID_nsIXMLHttpRequest ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NS_OK ; 
 int /*<<< orphan*/  NS_SCRIPTSECURITYMANAGER_CONTRACTID ; 
 int /*<<< orphan*/  NS_XMLHTTPREQUEST_CONTRACTID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pCompMgr ; 
 int /*<<< orphan*/  pServMgr ; 

nsIXMLHttpRequest *FUNC12(nsIDOMWindow *nswindow)
{
    nsIScriptSecurityManager *secman;
    nsIPrincipal             *nspri;
    nsIGlobalObject          *nsglo;
    nsIXMLHttpRequest        *nsxhr;
    nsresult                  nsres;

    nsres = FUNC8(pServMgr,
            NS_SCRIPTSECURITYMANAGER_CONTRACTID,
            &IID_nsIScriptSecurityManager, (void**)&secman);
    if(FUNC1(nsres)) {
        FUNC0("Could not get sec manager service: %08x\n", nsres);
        return NULL;
    }

    nsres = FUNC6(secman, &nspri);
    FUNC7(secman);
    if(FUNC1(nsres)) {
        FUNC0("GetSystemPrincipal failed: %08x\n", nsres);
        return NULL;
    }

    nsres = FUNC4(nswindow, &IID_nsIGlobalObject, (void **)&nsglo);
    FUNC2(nsres == NS_OK);

    nsres = FUNC3(pCompMgr,
            NS_XMLHTTPREQUEST_CONTRACTID, NULL, &IID_nsIXMLHttpRequest,
            (void**)&nsxhr);
    if(FUNC1(nsres)) {
        FUNC0("Could not get nsIXMLHttpRequest: %08x\n", nsres);
        FUNC9(nspri);
        FUNC5(nsglo);
        return NULL;
    }

    nsres = FUNC10(nsxhr, nspri, NULL, nsglo, NULL, NULL);

    FUNC9(nspri);
    FUNC5(nsglo);
    if(FUNC1(nsres)) {
        FUNC0("nsIXMLHttpRequest_Init failed: %08x\n", nsres);
        FUNC11(nsxhr);
        return NULL;
    }
    return nsxhr;
}