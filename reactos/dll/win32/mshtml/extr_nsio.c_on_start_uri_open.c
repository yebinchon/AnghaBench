
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsresult ;
struct TYPE_5__ {int nsIFileURL_iface; TYPE_2__* container; scalar_t__ is_doc_uri; } ;
typedef TYPE_1__ nsWineURI ;
typedef int nsIURI ;
typedef int cpp_bool ;
struct TYPE_6__ {scalar_t__ doc; int nsIWebBrowserChrome_iface; } ;
typedef TYPE_2__ NSContainer ;


 int FALSE ;
 int IID_nsWineURI ;
 int NS_ERROR_NOT_IMPLEMENTED ;
 scalar_t__ NS_FAILED (int ) ;
 int NS_OK ;
 scalar_t__ TRUE ;
 int WARN (char*,int ) ;
 int nsIFileURL_Release (int *) ;
 int nsIURI_QueryInterface (int *,int *,void**) ;
 int nsIWebBrowserChrome_AddRef (int *) ;
 int translate_url (scalar_t__,TYPE_1__*) ;

nsresult on_start_uri_open(NSContainer *nscontainer, nsIURI *uri, cpp_bool *_retval)
{
    nsWineURI *wine_uri;
    nsresult nsres;

    *_retval = FALSE;

    nsres = nsIURI_QueryInterface(uri, &IID_nsWineURI, (void**)&wine_uri);
    if(NS_FAILED(nsres)) {
        WARN("Could not get nsWineURI: %08x\n", nsres);
        return NS_ERROR_NOT_IMPLEMENTED;
    }

    if(!wine_uri->is_doc_uri) {
        wine_uri->is_doc_uri = TRUE;

        if(!wine_uri->container) {
            nsIWebBrowserChrome_AddRef(&nscontainer->nsIWebBrowserChrome_iface);
            wine_uri->container = nscontainer;
        }

        if(nscontainer->doc)
            *_retval = translate_url(nscontainer->doc, wine_uri);
    }

    nsIFileURL_Release(&wine_uri->nsIFileURL_iface);
    return NS_OK;
}
