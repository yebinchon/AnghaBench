
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
typedef int VARIANT ;
struct TYPE_6__ {scalar_t__ props_len; int * props; TYPE_1__* plugin_host; } ;
struct TYPE_5__ {int disp; } ;
typedef TYPE_1__ PluginHost ;
typedef int LCID ;
typedef TYPE_2__ HTMLPluginContainer ;
typedef int HRESULT ;
typedef int EXCEPINFO ;
typedef int DISPPARAMS ;
typedef scalar_t__ DISPID ;


 int ERR (char*) ;
 int E_FAIL ;
 int E_UNEXPECTED ;
 int FIXME (char*) ;
 int IDispatch_Invoke (int ,int ,int *,int ,int ,int *,int *,int *,int *) ;
 int IID_NULL ;
 scalar_t__ MSHTML_DISPID_CUSTOM_MIN ;
 int check_script_safety (TYPE_1__*) ;

HRESULT invoke_plugin_prop(HTMLPluginContainer *plugin_container, DISPID id, LCID lcid, WORD flags, DISPPARAMS *params,
        VARIANT *res, EXCEPINFO *ei)
{
    PluginHost *host;

    host = plugin_container->plugin_host;
    if(!host || !host->disp) {
        FIXME("Called with no disp\n");
        return E_UNEXPECTED;
    }

    if(!check_script_safety(host)) {
        FIXME("Insecure object\n");
        return E_FAIL;
    }

    if(id < MSHTML_DISPID_CUSTOM_MIN || id > MSHTML_DISPID_CUSTOM_MIN + plugin_container->props_len) {
        ERR("Invalid id\n");
        return E_FAIL;
    }

    return IDispatch_Invoke(host->disp, plugin_container->props[id-MSHTML_DISPID_CUSTOM_MIN], &IID_NULL,
            lcid, flags, params, res, ei, ((void*)0));
}
