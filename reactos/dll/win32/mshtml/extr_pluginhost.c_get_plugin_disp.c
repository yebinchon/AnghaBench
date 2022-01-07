
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* plugin_host; } ;
struct TYPE_5__ {int * disp; } ;
typedef TYPE_1__ PluginHost ;
typedef int IDispatch ;
typedef TYPE_2__ HTMLPluginContainer ;
typedef int HRESULT ;


 int ERR (char*) ;
 int E_FAIL ;
 int E_UNEXPECTED ;
 int FIXME (char*) ;
 int IDispatch_AddRef (int *) ;
 int S_OK ;
 int check_script_safety (TYPE_1__*) ;

HRESULT get_plugin_disp(HTMLPluginContainer *plugin_container, IDispatch **ret)
{
    PluginHost *host;

    host = plugin_container->plugin_host;
    if(!host) {
        ERR("No plugin host\n");
        return E_UNEXPECTED;
    }

    if(!host->disp) {
        *ret = ((void*)0);
        return S_OK;
    }

    if(!check_script_safety(host)) {
        FIXME("Insecure object\n");
        return E_FAIL;
    }

    IDispatch_AddRef(host->disp);
    *ret = host->disp;
    return S_OK;
}
