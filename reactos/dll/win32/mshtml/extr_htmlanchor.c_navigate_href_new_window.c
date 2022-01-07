
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int nsAString ;
typedef int WCHAR ;
struct TYPE_7__ {TYPE_1__* doc; } ;
struct TYPE_9__ {TYPE_2__ node; } ;
struct TYPE_8__ {int window; } ;
struct TYPE_6__ {TYPE_3__ basedoc; } ;
typedef int PRUnichar ;
typedef int IUri ;
typedef TYPE_4__ HTMLElement ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IUri_Release (int *) ;
 int create_relative_uri (int ,int const*,int **) ;
 int navigate_new_window (int ,int *,int const*,int *,int *) ;
 int nsAString_GetData (int *,int const**) ;

__attribute__((used)) static HRESULT navigate_href_new_window(HTMLElement *element, nsAString *href_str, const WCHAR *target)
{
    const PRUnichar *href;
    IUri *uri;
    HRESULT hres;

    nsAString_GetData(href_str, &href);
    hres = create_relative_uri(element->node.doc->basedoc.window, href, &uri);
    if(FAILED(hres))
        return hres;

    hres = navigate_new_window(element->node.doc->basedoc.window, uri, target, ((void*)0), ((void*)0));
    IUri_Release(uri);
    return hres;
}
