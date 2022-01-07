
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* container; } ;
typedef TYPE_1__ nsWineURI ;
struct TYPE_8__ {int nsIWebBrowserChrome_iface; } ;
typedef TYPE_2__ NSContainer ;


 int TRACE (char*,TYPE_2__*,TYPE_2__*) ;
 int nsIWebBrowserChrome_AddRef (int *) ;
 int nsIWebBrowserChrome_Release (int *) ;

__attribute__((used)) static void set_uri_nscontainer(nsWineURI *This, NSContainer *nscontainer)
{
    if(This->container) {
        if(This->container == nscontainer)
            return;
        TRACE("Changing %p -> %p\n", This->container, nscontainer);
        nsIWebBrowserChrome_Release(&This->container->nsIWebBrowserChrome_iface);
    }

    if(nscontainer)
        nsIWebBrowserChrome_AddRef(&nscontainer->nsIWebBrowserChrome_iface);
    This->container = nscontainer;
}
