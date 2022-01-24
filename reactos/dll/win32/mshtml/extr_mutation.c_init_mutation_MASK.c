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
typedef  int /*<<< orphan*/  nsIFactory ;
typedef  int /*<<< orphan*/  nsIComponentManager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIContentUtils ; 
 int /*<<< orphan*/  IID_nsIFactory ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_ICONTENTUTILS_CID ; 
 int /*<<< orphan*/ * content_utils ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(nsIComponentManager *component_manager)
{
    nsIFactory *factory;
    nsresult nsres;

    if(!component_manager) {
        if(content_utils) {
            FUNC3(content_utils);
            content_utils = NULL;
        }
        return;
    }

    nsres = FUNC2(component_manager, &NS_ICONTENTUTILS_CID,
            &IID_nsIFactory, (void**)&factory);
    if(FUNC1(nsres)) {
        FUNC0("Could not create nsIContentUtils service: %08x\n", nsres);
        return;
    }

    nsres = FUNC4(factory, NULL, &IID_nsIContentUtils, (void**)&content_utils);
    FUNC5(factory);
    if(FUNC1(nsres))
        FUNC0("Could not create nsIContentUtils instance: %08x\n", nsres);
}