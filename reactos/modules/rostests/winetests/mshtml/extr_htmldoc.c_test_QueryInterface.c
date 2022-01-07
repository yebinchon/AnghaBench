
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_14__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef int IUnknown ;
typedef TYPE_2__ IID ;
typedef int IHTMLDocument2 ;
typedef int HRESULT ;


 int E_NOINTERFACE ;
 TYPE_2__ const IID_IDispatch ;
 TYPE_2__ const IID_IExternalConnection ;
 TYPE_2__ const IID_IHTMLDOMNode ;
 TYPE_2__ const IID_IHTMLDOMNode2 ;
 TYPE_2__ const IID_IMarshal ;
 TYPE_2__ const IID_IPersistPropertyBag ;
 TYPE_2__ const IID_IRunnableObject ;
 TYPE_2__ const IID_IStdMarshalInfo ;
 TYPE_2__ const IID_ITargetFrame ;
 int IUnknown_QueryInterface (int *,TYPE_2__ const*,void**) ;
 int IUnknown_Release (int *) ;
 int S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_QueryInterface(IHTMLDocument2 *htmldoc)
{
    IUnknown *qi, *doc = (IUnknown*)htmldoc;
    HRESULT hres;

    static const IID IID_UndocumentedScriptIface =
        {0x719c3050,0xf9d3,0x11cf,{0xa4,0x93,0x00,0x40,0x05,0x23,0xa8,0xa0}};

    qi = (void*)0xdeadbeef;
    hres = IUnknown_QueryInterface(doc, &IID_IRunnableObject, (void**)&qi);
    ok(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    ok(qi == ((void*)0), "qirunnable=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = IUnknown_QueryInterface(doc, &IID_IHTMLDOMNode, (void**)&qi);
    ok(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    ok(qi == ((void*)0), "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = IUnknown_QueryInterface(doc, &IID_IHTMLDOMNode2, (void**)&qi);
    ok(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    ok(qi == ((void*)0), "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = IUnknown_QueryInterface(doc, &IID_IPersistPropertyBag, (void**)&qi);
    ok(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    ok(qi == ((void*)0), "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = IUnknown_QueryInterface(doc, &IID_UndocumentedScriptIface, (void**)&qi);
    ok(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    ok(qi == ((void*)0), "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = IUnknown_QueryInterface(doc, &IID_IMarshal, (void**)&qi);
    ok(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    ok(qi == ((void*)0), "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = IUnknown_QueryInterface(doc, &IID_IExternalConnection, (void**)&qi);
    ok(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    ok(qi == ((void*)0), "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = IUnknown_QueryInterface(doc, &IID_IStdMarshalInfo, (void**)&qi);
    ok(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    ok(qi == ((void*)0), "qi=%p, expected NULL\n", qi);

    qi = (void*)0xdeadbeef;
    hres = IUnknown_QueryInterface(doc, &IID_ITargetFrame, (void**)&qi);
    ok(hres == E_NOINTERFACE, "QueryInterface returned %08x, expected E_NOINTERFACE\n", hres);
    ok(qi == ((void*)0), "qi=%p, expected NULL\n", qi);

    hres = IUnknown_QueryInterface(doc, &IID_IDispatch, (void**)&qi);
    ok(hres == S_OK, "Could not get IDispatch interface: %08x\n", hres);
    ok(qi != (IUnknown*)doc, "disp == doc\n");
    IUnknown_Release(qi);
}
