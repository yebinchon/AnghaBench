
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {size_t props_len; scalar_t__* props; int props_size; TYPE_1__* plugin_host; } ;
struct TYPE_4__ {int * disp; } ;
typedef int IDispatch ;
typedef TYPE_2__ HTMLPluginContainer ;
typedef int HRESULT ;
typedef size_t DWORD ;
typedef scalar_t__ DISPID ;


 int DISP_E_UNKNOWNNAME ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IDispatch_GetIDsOfNames (int *,int *,int **,int,int ,scalar_t__*) ;
 int IID_NULL ;
 scalar_t__ MSHTML_DISPID_CUSTOM_MIN ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int WARN (char*) ;
 int debugstr_w (int *) ;
 scalar_t__* heap_alloc (int) ;
 scalar_t__* heap_realloc (scalar_t__*,int) ;

HRESULT get_plugin_dispid(HTMLPluginContainer *plugin_container, WCHAR *name, DISPID *ret)
{
    IDispatch *disp;
    DISPID id;
    DWORD i;
    HRESULT hres;

    if(!plugin_container->plugin_host) {
        WARN("no plugin host\n");
        return DISP_E_UNKNOWNNAME;
    }

    disp = plugin_container->plugin_host->disp;
    if(!disp)
        return DISP_E_UNKNOWNNAME;

    hres = IDispatch_GetIDsOfNames(disp, &IID_NULL, &name, 1, 0, &id);
    if(FAILED(hres)) {
        TRACE("no prop %s\n", debugstr_w(name));
        return DISP_E_UNKNOWNNAME;
    }

    for(i=0; i < plugin_container->props_len; i++) {
        if(id == plugin_container->props[i]) {
            *ret = MSHTML_DISPID_CUSTOM_MIN+i;
            return S_OK;
        }
    }

    if(!plugin_container->props) {
        plugin_container->props = heap_alloc(8*sizeof(DISPID));
        if(!plugin_container->props)
            return E_OUTOFMEMORY;
        plugin_container->props_size = 8;
    }else if(plugin_container->props_len == plugin_container->props_size) {
        DISPID *new_props;

        new_props = heap_realloc(plugin_container->props, plugin_container->props_size*2*sizeof(DISPID));
        if(!new_props)
            return E_OUTOFMEMORY;

        plugin_container->props = new_props;
        plugin_container->props_size *= 2;
    }

    plugin_container->props[plugin_container->props_len] = id;
    *ret = MSHTML_DISPID_CUSTOM_MIN+plugin_container->props_len;
    plugin_container->props_len++;
    return S_OK;
}
