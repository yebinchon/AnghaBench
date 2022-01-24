#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* container; } ;
typedef  TYPE_1__ nsWineURI ;
struct TYPE_8__ {int /*<<< orphan*/  nsIWebBrowserChrome_iface; } ;
typedef  TYPE_2__ NSContainer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(nsWineURI *This, NSContainer *nscontainer)
{
    if(This->container) {
        if(This->container == nscontainer)
            return;
        FUNC0("Changing %p -> %p\n", This->container, nscontainer);
        FUNC2(&This->container->nsIWebBrowserChrome_iface);
    }

    if(nscontainer)
        FUNC1(&nscontainer->nsIWebBrowserChrome_iface);
    This->container = nscontainer;
}