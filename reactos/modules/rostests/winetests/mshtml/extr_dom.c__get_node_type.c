
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int IUnknown ;
typedef int IHTMLDOMNode ;
typedef scalar_t__ HRESULT ;


 int IHTMLDOMNode_Release (int *) ;
 scalar_t__ IHTMLDOMNode_get_nodeType (int *,int*) ;
 scalar_t__ S_OK ;
 int * _get_node_iface (unsigned int,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static LONG _get_node_type(unsigned line, IUnknown *unk)
{
    IHTMLDOMNode *node = _get_node_iface(line, unk);
    LONG type = -1;
    HRESULT hres;

    hres = IHTMLDOMNode_get_nodeType(node, &type);
    ok(hres == S_OK, "get_nodeType failed: %08x\n", hres);

    IHTMLDOMNode_Release(node);

    return type;
}
