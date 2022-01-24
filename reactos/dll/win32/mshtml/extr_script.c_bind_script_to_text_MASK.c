#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_13__ {int readed; int bom; int /*<<< orphan*/  IBindStatusCallback_iface; } ;
struct TYPE_12__ {int /*<<< orphan*/  doc; } ;
struct TYPE_11__ {int /*<<< orphan*/  IHTMLScriptElement_iface; } ;
struct TYPE_10__ {TYPE_5__ bsc; int /*<<< orphan*/  buf; void* hres; TYPE_2__* script_elem; int /*<<< orphan*/  scheme; } ;
typedef  TYPE_1__ ScriptBSC ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  TYPE_2__ HTMLScriptElement ;
typedef  TYPE_3__ HTMLInnerWindow ;
typedef  void* HRESULT ;
typedef  size_t DWORD ;

/* Variables and functions */
#define  BOM_UTF16 129 
#define  BOM_UTF8 128 
 int /*<<< orphan*/  CP_UTF8 ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 void* E_FAIL ; 
 void* E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC8 (void*) ; 
 void* S_OK ; 
 int /*<<< orphan*/  ScriptBSCVtbl ; 
 int /*<<< orphan*/  URL_MK_UNIFORM ; 
 int /*<<< orphan*/  URL_SCHEME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 TYPE_1__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC14 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC15(HTMLInnerWindow *window, IUri *uri, HTMLScriptElement *script_elem, WCHAR **ret)
{
    UINT cp = CP_UTF8;
    ScriptBSC *bsc;
    IMoniker *mon;
    WCHAR *text;
    HRESULT hres;

    hres = FUNC0(NULL, uri, &mon, URL_MK_UNIFORM);
    if(FUNC1(hres))
        return hres;

    bsc = FUNC11(sizeof(*bsc));
    if(!bsc) {
        FUNC5(mon);
        return E_OUTOFMEMORY;
    }

    FUNC12(&bsc->bsc, &ScriptBSCVtbl, mon, 0);
    FUNC5(mon);
    bsc->hres = E_FAIL;

    hres = FUNC6(uri, &bsc->scheme);
    if(FUNC1(hres))
        bsc->scheme = URL_SCHEME_UNKNOWN;

    FUNC4(&script_elem->IHTMLScriptElement_iface);
    bsc->script_elem = script_elem;

    hres = FUNC14(window, &bsc->bsc, NULL);
    if(FUNC8(hres))
        hres = bsc->hres;
    if(FUNC1(hres)) {
        FUNC3(&bsc->bsc.IBindStatusCallback_iface);
        return hres;
    }

    if(!bsc->bsc.readed) {
        *ret = NULL;
        return S_OK;
    }

    switch(bsc->bsc.bom) {
    case BOM_UTF16:
        if(bsc->bsc.readed % sizeof(WCHAR)) {
            FUNC2("The buffer is not a valid utf16 string\n");
            hres = E_FAIL;
            break;
        }

        text = FUNC10(bsc->bsc.readed+sizeof(WCHAR));
        if(!text) {
            hres = E_OUTOFMEMORY;
            break;
        }

        FUNC13(text, bsc->buf, bsc->bsc.readed);
        text[bsc->bsc.readed/sizeof(WCHAR)] = 0;
        break;

    default:
        /* FIXME: Try to use charset from HTTP headers first */
        cp = FUNC9(window->doc);
        /* fall through */
    case BOM_UTF8: {
        DWORD len;

        len = FUNC7(cp, 0, bsc->buf, bsc->bsc.readed, NULL, 0);
        text = FUNC10((len+1)*sizeof(WCHAR));
        if(!text) {
            hres = E_OUTOFMEMORY;
            break;
        }

        FUNC7(cp, 0, bsc->buf, bsc->bsc.readed, text, len);
        text[len] = 0;
    }
    }

    FUNC3(&bsc->bsc.IBindStatusCallback_iface);
    if(FUNC1(hres))
        return hres;

    *ret = text;
    return S_OK;
}