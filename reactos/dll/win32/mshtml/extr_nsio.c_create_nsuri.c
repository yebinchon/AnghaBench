
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int nsresult ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_10__ {int ref; TYPE_5__ nsIFileURL_iface; int origin_charset; int scheme; int * uri; int is_mutable; TYPE_1__ nsIStandardURL_iface; } ;
typedef TYPE_2__ nsWineURI ;
typedef int NSContainer ;
typedef int IUri ;
typedef int HTMLOuterWindow ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IUri_AddRef (int *) ;
 int IUri_GetScheme (int *,int *) ;
 int NS_ERROR_OUT_OF_MEMORY ;
 int NS_OK ;
 int TRACE (char*,TYPE_2__*) ;
 int TRUE ;
 int URL_SCHEME_UNKNOWN ;
 TYPE_2__* heap_alloc_zero (int) ;
 int heap_strdupA (char const*) ;
 int nsFileURLVtbl ;
 int nsIFileURL_Release (TYPE_5__*) ;
 int nsStandardURLVtbl ;
 int set_uri_nscontainer (TYPE_2__*,int *) ;
 int set_uri_window (TYPE_2__*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static nsresult create_nsuri(IUri *iuri, HTMLOuterWindow *window, NSContainer *container,
        const char *origin_charset, nsWineURI **_retval)
{
    nsWineURI *ret;
    HRESULT hres;

    ret = heap_alloc_zero(sizeof(nsWineURI));
    if(!ret)
        return NS_ERROR_OUT_OF_MEMORY;

    ret->nsIFileURL_iface.lpVtbl = &nsFileURLVtbl;
    ret->nsIStandardURL_iface.lpVtbl = &nsStandardURLVtbl;
    ret->ref = 1;
    ret->is_mutable = TRUE;

    set_uri_nscontainer(ret, container);
    set_uri_window(ret, window);

    IUri_AddRef(iuri);
    ret->uri = iuri;

    hres = IUri_GetScheme(iuri, &ret->scheme);
    if(FAILED(hres))
        ret->scheme = URL_SCHEME_UNKNOWN;

    if(origin_charset && *origin_charset && strcmp(origin_charset, "UTF-8")) {
        ret->origin_charset = heap_strdupA(origin_charset);
        if(!ret->origin_charset) {
            nsIFileURL_Release(&ret->nsIFileURL_iface);
            return NS_ERROR_OUT_OF_MEMORY;
        }
    }

    TRACE("retval=%p\n", ret);
    *_retval = ret;
    return NS_OK;
}
