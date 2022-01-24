#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNodeList ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_3__ {unsigned int elem_vars_cnt; unsigned int elem_vars_size; int /*<<< orphan*/ ** elem_vars; int /*<<< orphan*/  nsdoc; } ;
typedef  TYPE_1__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DISPID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ MSHTML_DISPID_CUSTOM_MIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ ** FUNC1 (int) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC10(HTMLDocumentNode *This, BSTR name, DISPID *dispid)
{
    nsIDOMNodeList *node_list;
    nsAString name_str;
    UINT32 len;
    unsigned i;
    nsresult nsres;

    if(!This->nsdoc)
        return DISP_E_UNKNOWNNAME;

    FUNC5(&name_str, name);
    nsres = FUNC6(This->nsdoc, &name_str, &node_list);
    FUNC4(&name_str);
    if(FUNC0(nsres))
        return E_FAIL;

    nsres = FUNC7(node_list, &len);
    FUNC8(node_list);
    if(FUNC0(nsres))
        return E_FAIL;

    if(!len)
        return DISP_E_UNKNOWNNAME;

    for(i=0; i < This->elem_vars_cnt; i++) {
        if(!FUNC9(name, This->elem_vars[i])) {
            *dispid = MSHTML_DISPID_CUSTOM_MIN+i;
            return S_OK;
        }
    }

    if(This->elem_vars_cnt == This->elem_vars_size) {
        WCHAR **new_vars;

        if(This->elem_vars_size) {
            new_vars = FUNC2(This->elem_vars, This->elem_vars_size*2*sizeof(WCHAR*));
            if(!new_vars)
                return E_OUTOFMEMORY;
            This->elem_vars_size *= 2;
        }else {
            new_vars = FUNC1(16*sizeof(WCHAR*));
            if(!new_vars)
                return E_OUTOFMEMORY;
            This->elem_vars_size = 16;
        }

        This->elem_vars = new_vars;
    }

    This->elem_vars[This->elem_vars_cnt] = FUNC3(name);
    if(!This->elem_vars[This->elem_vars_cnt])
        return E_OUTOFMEMORY;

    *dispid = MSHTML_DISPID_CUSTOM_MIN+This->elem_vars_cnt++;
    return S_OK;
}