
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int IUnknown ;
typedef int IHTMLDOMNode ;
typedef int IHTMLDOMChildrenCollection ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;


 int IDispatch_Release (int *) ;
 scalar_t__ IHTMLDOMChildrenCollection_item (int *,int ,int **) ;
 scalar_t__ S_OK ;
 int * _get_node_iface (unsigned int,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static IHTMLDOMNode *_get_child_item(unsigned line, IHTMLDOMChildrenCollection *col, LONG idx)
{
    IHTMLDOMNode *node = ((void*)0);
    IDispatch *disp;
    HRESULT hres;

    hres = IHTMLDOMChildrenCollection_item(col, idx, &disp);
    ok(hres == S_OK, "item failed: %08x\n", hres);

    node = _get_node_iface(line, (IUnknown*)disp);
    IDispatch_Release(disp);

    return node;
}
