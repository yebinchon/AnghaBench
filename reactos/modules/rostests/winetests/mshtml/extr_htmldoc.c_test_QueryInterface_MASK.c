#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_14__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ IID ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOINTERFACE ; 
 TYPE_2__ const IID_IDispatch ; 
 TYPE_2__ const IID_IExternalConnection ; 
 TYPE_2__ const IID_IHTMLDOMNode ; 
 TYPE_2__ const IID_IHTMLDOMNode2 ; 
 TYPE_2__ const IID_IMarshal ; 
 TYPE_2__ const IID_IPersistPropertyBag ; 
 TYPE_2__ const IID_IRunnableObject ; 
 TYPE_2__ const IID_IStdMarshalInfo ; 
 TYPE_2__ const IID_ITargetFrame ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__ const*,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

__attribute__((used)) static void FUNC3(IHTMLDocument2 *htmldoc)
{
    IUnknown *qi, *doc = (IUnknown*)htmldoc;
    HRESULT hres;

    static const IID IID_UndocumentedScriptIface =
        {0x719c3050,0xf9d3,0x11cf,{0xa4,0x93,0x00,0x40,0x05,0x23,0xa8,0xa0}};

    qi = (void*)0xdeadbeef;
    hres = FUNC0(doc, &IID_IRunnableObject, (void**)&qi);
    FUNC2(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    FUNC2(qi == NULL, "qirunnable=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = FUNC0(doc, &IID_IHTMLDOMNode, (void**)&qi);
    FUNC2(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    FUNC2(qi == NULL, "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = FUNC0(doc, &IID_IHTMLDOMNode2, (void**)&qi);
    FUNC2(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    FUNC2(qi == NULL, "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = FUNC0(doc, &IID_IPersistPropertyBag, (void**)&qi);
    FUNC2(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    FUNC2(qi == NULL, "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = FUNC0(doc, &IID_UndocumentedScriptIface, (void**)&qi);
    FUNC2(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    FUNC2(qi == NULL, "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = FUNC0(doc, &IID_IMarshal, (void**)&qi);
    FUNC2(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    FUNC2(qi == NULL, "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = FUNC0(doc, &IID_IExternalConnection, (void**)&qi);
    FUNC2(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    FUNC2(qi == NULL, "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = FUNC0(doc, &IID_IStdMarshalInfo, (void**)&qi);
    FUNC2(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    FUNC2(qi == NULL, "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = FUNC0(doc, &IID_ITargetFrame, (void**)&qi);
    FUNC2(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    FUNC2(qi == NULL, "qi=%p, expected NULL\n", qi);

    hres = FUNC0(doc, &IID_IDispatch, (void**)&qi);
    FUNC2(hres == S_OK, "Could not get IDispatch interface: %08x\n", hres);
    FUNC2(qi != (IUnknown*)doc, "disp == doc\n");
    FUNC1(qi);
}