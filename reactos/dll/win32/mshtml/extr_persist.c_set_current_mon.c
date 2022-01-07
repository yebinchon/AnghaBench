
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_8__ {TYPE_2__* window; } ;
struct TYPE_10__ {TYPE_1__ basedoc; } ;
struct TYPE_9__ {int load_flags; int url; int * mon; TYPE_7__* doc_obj; } ;
typedef int IUriContainer ;
typedef int IUri ;
typedef int IMoniker ;
typedef TYPE_2__ HTMLOuterWindow ;
typedef int HRESULT ;
typedef int DWORD ;


 int BINDING_REFRESH ;
 int BINDING_REPLACE ;
 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (int ) ;
 int IID_IUriContainer ;
 int IMoniker_AddRef (int *) ;
 int IMoniker_GetDisplayName (int *,int *,int *,int **) ;
 int IMoniker_QueryInterface (int *,int *,void**) ;
 int IMoniker_Release (int *) ;
 int IUriContainer_GetIUri (int *,int **) ;
 int IUriContainer_Release (int *) ;
 int IUri_Release (int *) ;
 int SCRIPTMODE_ACTIVESCRIPT ;
 int SCRIPTMODE_GECKO ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int SysAllocString (int *) ;
 int TRACE (char*) ;
 int WARN (char*,int ) ;
 int create_uri (int *,int ,int **) ;
 int notify_travellog_update (TYPE_7__*) ;
 int set_current_uri (TYPE_2__*,int *) ;
 int set_script_mode (TYPE_2__*,int ) ;
 scalar_t__ use_gecko_script (TYPE_2__*) ;

void set_current_mon(HTMLOuterWindow *This, IMoniker *mon, DWORD flags)
{
    IUriContainer *uri_container;
    IUri *uri = ((void*)0);
    HRESULT hres;

    if(This->mon) {
        if(This->doc_obj && !(flags & (BINDING_REPLACE|BINDING_REFRESH))) {
            if(This == This->doc_obj->basedoc.window)
                notify_travellog_update(This->doc_obj);
            else
                TRACE("Skipping travellog update for frame navigation.\n");
        }
        IMoniker_Release(This->mon);
        This->mon = ((void*)0);
    }

    This->load_flags = flags;
    if(!mon)
        return;

    IMoniker_AddRef(mon);
    This->mon = mon;

    hres = IMoniker_QueryInterface(mon, &IID_IUriContainer, (void**)&uri_container);
    if(SUCCEEDED(hres)) {
        hres = IUriContainer_GetIUri(uri_container, &uri);
        IUriContainer_Release(uri_container);
        if(hres != S_OK) {
            WARN("GetIUri failed: %08x\n", hres);
            uri = ((void*)0);
        }
    }

    if(!uri) {
        WCHAR *url;

        hres = IMoniker_GetDisplayName(mon, ((void*)0), ((void*)0), &url);
        if(SUCCEEDED(hres)) {
            hres = create_uri(url, 0, &uri);
            if(FAILED(hres)) {
                WARN("CrateUri failed: %08x\n", hres);
                set_current_uri(This, ((void*)0));
                This->url = SysAllocString(url);
                CoTaskMemFree(url);
                return;
            }
            CoTaskMemFree(url);
        }else {
            WARN("GetDisplayName failed: %08x\n", hres);
        }
    }

    set_current_uri(This, uri);
    if(uri)
        IUri_Release(uri);
    set_script_mode(This, use_gecko_script(This) ? SCRIPTMODE_GECKO : SCRIPTMODE_ACTIVESCRIPT);
}
