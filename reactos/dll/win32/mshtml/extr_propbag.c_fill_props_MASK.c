#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  nsIDOMHTMLCollection ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  scalar_t__ UINT32 ;
typedef  int /*<<< orphan*/  PropertyBag ;
typedef  char PRUnichar ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLElement ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC14(nsIDOMHTMLElement *nselem, PropertyBag *prop_bag)
{
    const PRUnichar *name, *value;
    nsAString name_str, value_str;
    nsIDOMHTMLCollection *params;
    nsIDOMHTMLElement *param_elem;
    UINT32 length, i;
    nsIDOMNode *nsnode;
    nsresult nsres;
    HRESULT hres = S_OK;

    static const PRUnichar nameW[] = {'n','a','m','e',0};
    static const PRUnichar paramW[] = {'p','a','r','a','m',0};
    static const PRUnichar valueW[] = {'v','a','l','u','e',0};

    FUNC6(&name_str, paramW);
    nsres = FUNC10(nselem, &name_str, &params);
    FUNC5(&name_str);
    if(FUNC1(nsres))
        return E_FAIL;

    nsres = FUNC7(params, &length);
    if(FUNC1(nsres))
        length = 0;

    for(i=0; i < length; i++) {
        nsres = FUNC8(params, i, &nsnode);
        if(FUNC1(nsres)) {
            hres = E_FAIL;
            break;
        }

        nsres = FUNC12(nsnode, &IID_nsIDOMHTMLElement, (void**)&param_elem);
        FUNC13(nsnode);
        if(FUNC1(nsres)) {
            hres = E_FAIL;
            break;
        }

        nsres = FUNC4(param_elem, nameW, &name_str, &name);
        if(FUNC2(nsres)) {
            nsres = FUNC4(param_elem, valueW, &value_str, &value);
            if(FUNC2(nsres)) {
                hres = FUNC3(prop_bag, name, value);
                FUNC5(&value_str);
            }

            FUNC5(&name_str);
        }

        FUNC11(param_elem);
        if(FUNC0(hres))
            break;
        if(FUNC1(nsres)) {
            hres = E_FAIL;
            break;
        }
    }

    FUNC9(params);
    return hres;
}