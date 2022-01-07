
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_13__ {int readed; int bom; int IBindStatusCallback_iface; } ;
struct TYPE_12__ {int doc; } ;
struct TYPE_11__ {int IHTMLScriptElement_iface; } ;
struct TYPE_10__ {TYPE_5__ bsc; int buf; void* hres; TYPE_2__* script_elem; int scheme; } ;
typedef TYPE_1__ ScriptBSC ;
typedef int IUri ;
typedef int IMoniker ;
typedef TYPE_2__ HTMLScriptElement ;
typedef TYPE_3__ HTMLInnerWindow ;
typedef void* HRESULT ;
typedef size_t DWORD ;




 int CP_UTF8 ;
 void* CreateURLMonikerEx2 (int *,int *,int **,int ) ;
 void* E_FAIL ;
 void* E_OUTOFMEMORY ;
 scalar_t__ FAILED (void*) ;
 int FIXME (char*) ;
 int IBindStatusCallback_Release (int *) ;
 int IHTMLScriptElement_AddRef (int *) ;
 int IMoniker_Release (int *) ;
 void* IUri_GetScheme (int *,int *) ;
 size_t MultiByteToWideChar (int ,int ,int ,int,int *,size_t) ;
 scalar_t__ SUCCEEDED (void*) ;
 void* S_OK ;
 int ScriptBSCVtbl ;
 int URL_MK_UNIFORM ;
 int URL_SCHEME_UNKNOWN ;
 int get_document_charset (int ) ;
 int * heap_alloc (int) ;
 TYPE_1__* heap_alloc_zero (int) ;
 int init_bscallback (TYPE_5__*,int *,int *,int ) ;
 int memcpy (int *,int ,int) ;
 void* start_binding (TYPE_3__*,TYPE_5__*,int *) ;

__attribute__((used)) static HRESULT bind_script_to_text(HTMLInnerWindow *window, IUri *uri, HTMLScriptElement *script_elem, WCHAR **ret)
{
    UINT cp = CP_UTF8;
    ScriptBSC *bsc;
    IMoniker *mon;
    WCHAR *text;
    HRESULT hres;

    hres = CreateURLMonikerEx2(((void*)0), uri, &mon, URL_MK_UNIFORM);
    if(FAILED(hres))
        return hres;

    bsc = heap_alloc_zero(sizeof(*bsc));
    if(!bsc) {
        IMoniker_Release(mon);
        return E_OUTOFMEMORY;
    }

    init_bscallback(&bsc->bsc, &ScriptBSCVtbl, mon, 0);
    IMoniker_Release(mon);
    bsc->hres = E_FAIL;

    hres = IUri_GetScheme(uri, &bsc->scheme);
    if(FAILED(hres))
        bsc->scheme = URL_SCHEME_UNKNOWN;

    IHTMLScriptElement_AddRef(&script_elem->IHTMLScriptElement_iface);
    bsc->script_elem = script_elem;

    hres = start_binding(window, &bsc->bsc, ((void*)0));
    if(SUCCEEDED(hres))
        hres = bsc->hres;
    if(FAILED(hres)) {
        IBindStatusCallback_Release(&bsc->bsc.IBindStatusCallback_iface);
        return hres;
    }

    if(!bsc->bsc.readed) {
        *ret = ((void*)0);
        return S_OK;
    }

    switch(bsc->bsc.bom) {
    case 129:
        if(bsc->bsc.readed % sizeof(WCHAR)) {
            FIXME("The buffer is not a valid utf16 string\n");
            hres = E_FAIL;
            break;
        }

        text = heap_alloc(bsc->bsc.readed+sizeof(WCHAR));
        if(!text) {
            hres = E_OUTOFMEMORY;
            break;
        }

        memcpy(text, bsc->buf, bsc->bsc.readed);
        text[bsc->bsc.readed/sizeof(WCHAR)] = 0;
        break;

    default:

        cp = get_document_charset(window->doc);

    case 128: {
        DWORD len;

        len = MultiByteToWideChar(cp, 0, bsc->buf, bsc->bsc.readed, ((void*)0), 0);
        text = heap_alloc((len+1)*sizeof(WCHAR));
        if(!text) {
            hres = E_OUTOFMEMORY;
            break;
        }

        MultiByteToWideChar(cp, 0, bsc->buf, bsc->bsc.readed, text, len);
        text[len] = 0;
    }
    }

    IBindStatusCallback_Release(&bsc->bsc.IBindStatusCallback_iface);
    if(FAILED(hres))
        return hres;

    *ret = text;
    return S_OK;
}
