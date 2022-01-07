
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * url; int * uri_nofrag; int * uri; } ;
typedef int IUri ;
typedef TYPE_1__ HTMLOuterWindow ;


 int FIXME (char*) ;
 int IUri_AddRef (int *) ;
 int IUri_GetDisplayUri (int *,int **) ;
 int IUri_Release (int *) ;
 int SysFreeString (int *) ;
 int * get_uri_nofrag (int *) ;

void set_current_uri(HTMLOuterWindow *window, IUri *uri)
{
    if(window->uri) {
        IUri_Release(window->uri);
        window->uri = ((void*)0);
    }

    if(window->uri_nofrag) {
        IUri_Release(window->uri_nofrag);
        window->uri_nofrag = ((void*)0);
    }

    SysFreeString(window->url);
    window->url = ((void*)0);

    if(!uri)
        return;

    IUri_AddRef(uri);
    window->uri = uri;

    window->uri_nofrag = get_uri_nofrag(uri);
    if(!window->uri_nofrag) {
        FIXME("get_uri_nofrag failed\n");
        IUri_AddRef(uri);
        window->uri_nofrag = uri;
    }

    IUri_GetDisplayUri(uri, &window->url);
}
