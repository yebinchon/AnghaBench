#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  nsIDOMHTMLCollection ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT32 ;
struct TYPE_4__ {int /*<<< orphan*/  nsform; } ;
typedef  char PRUnichar ;
typedef  TYPE_1__ HTMLFormElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ DISPID ;
typedef  char* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLElement ; 
 scalar_t__ MSHTML_CUSTOM_DISPID_CNT ; 
 scalar_t__ MSHTML_DISPID_CUSTOM_MIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const**) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 
 scalar_t__ FUNC18 (char*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static HRESULT FUNC20(HTMLDOMNode *iface,
        BSTR name, DWORD grfdex, DISPID *pid)
{
    HTMLFormElement *This = FUNC5(iface);
    nsIDOMHTMLCollection *elements;
    nsAString nsstr, name_str;
    UINT32 len, i;
    nsresult nsres;
    HRESULT hres = DISP_E_UNKNOWNNAME;

    static const PRUnichar nameW[] = {'n','a','m','e',0};

    FUNC3("(%p)->(%s %x %p)\n", This, FUNC19(name), grfdex, pid);

    nsres = FUNC14(This->nsform, &elements);
    if(FUNC1(nsres)) {
        FUNC0("GetElements failed: 0x%08x\n", nsres);
        return E_FAIL;
    }

    nsres = FUNC9(elements, &len);
    if(FUNC1(nsres)) {
        FUNC0("GetLength failed: 0x%08x\n", nsres);
        FUNC11(elements);
        return E_FAIL;
    }

    if(len > MSHTML_CUSTOM_DISPID_CNT)
        len = MSHTML_CUSTOM_DISPID_CNT;

    /* FIXME: Implement in more generic way */
    if('0' <= *name && *name <= '9') {
        WCHAR *end_ptr;

        i = FUNC18(name, &end_ptr, 10);
        if(!*end_ptr && i < len) {
            *pid = MSHTML_DISPID_CUSTOM_MIN + i;
            return S_OK;
        }
    }

    FUNC8(&nsstr, NULL);
    for(i = 0; i < len; ++i) {
        nsIDOMNode *nsitem;
        nsIDOMHTMLElement *nshtml_elem;
        const PRUnichar *str;

        nsres = FUNC10(elements, i, &nsitem);
        if(FUNC1(nsres)) {
            FUNC0("Item failed: 0x%08x\n", nsres);
            hres = E_FAIL;
            break;
        }

        nsres = FUNC15(nsitem, &IID_nsIDOMHTMLElement, (void**)&nshtml_elem);
        FUNC16(nsitem);
        if(FUNC1(nsres)) {
            FUNC0("Failed to get nsIDOMHTMLNode interface: 0x%08x\n", nsres);
            hres = E_FAIL;
            break;
        }

        /* compare by id attr */
        nsres = FUNC12(nshtml_elem, &nsstr);
        if(FUNC1(nsres)) {
            FUNC0("GetId failed: 0x%08x\n", nsres);
            FUNC13(nshtml_elem);
            hres = E_FAIL;
            break;
        }
        FUNC7(&nsstr, &str);
        if(!FUNC17(str, name)) {
            FUNC13(nshtml_elem);
            /* FIXME: using index for dispid */
            *pid = MSHTML_DISPID_CUSTOM_MIN + i;
            hres = S_OK;
            break;
        }

        /* compare by name attr */
        nsres = FUNC4(nshtml_elem, nameW, &name_str, &str);
        FUNC13(nshtml_elem);
        if(FUNC2(nsres)) {
            if(!FUNC17(str, name)) {
                FUNC6(&name_str);
                /* FIXME: using index for dispid */
                *pid = MSHTML_DISPID_CUSTOM_MIN + i;
                hres = S_OK;
                break;
            }
            FUNC6(&name_str);
        }
    }

    FUNC6(&nsstr);
    FUNC11(elements);
    return hres;
}