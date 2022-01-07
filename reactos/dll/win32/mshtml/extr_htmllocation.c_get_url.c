
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_9__ {TYPE_2__* window; } ;
struct TYPE_8__ {TYPE_1__* outer_window; } ;
struct TYPE_7__ {TYPE_3__ base; } ;
struct TYPE_6__ {int * url; } ;
typedef TYPE_4__ HTMLLocation ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int FIXME (char*) ;
 int S_OK ;

__attribute__((used)) static HRESULT get_url(HTMLLocation *This, const WCHAR **ret)
{
    if(!This->window || !This->window->base.outer_window || !This->window->base.outer_window->url) {
        FIXME("No current URL\n");
        return E_NOTIMPL;
    }

    *ret = This->window->base.outer_window->url;
    return S_OK;
}
