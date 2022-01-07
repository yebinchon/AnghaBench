
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef int IUnknown ;
typedef int IHTMLTextContainer ;
typedef int IHTMLElement2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 int IHTMLElement2_Release (int *) ;
 scalar_t__ IHTMLElement2_get_scrollLeft (int *,scalar_t__*) ;
 int IHTMLTextContainer_Release (int *) ;
 scalar_t__ IHTMLTextContainer_get_scrollLeft (int *,scalar_t__*) ;
 int IID_IHTMLTextContainer ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 scalar_t__ S_OK ;
 int * _get_elem2_iface (unsigned int,int *) ;
 int ok (int,char*,scalar_t__,...) ;

__attribute__((used)) static void _elem_get_scroll_left(unsigned line, IUnknown *unk)
{
    IHTMLElement2 *elem = _get_elem2_iface(line, unk);
    IHTMLTextContainer *txtcont;
    LONG l = -1, l2 = -1;
    HRESULT hres;

    hres = IHTMLElement2_get_scrollLeft(elem, ((void*)0));
    ok(hres == E_INVALIDARG, "expect E_INVALIDARG got 0x%08x\n", hres);

    hres = IHTMLElement2_get_scrollLeft(elem, &l);
    ok(hres == S_OK, "get_scrollTop failed: %08x\n", hres);
    IHTMLElement2_Release(elem);

    hres = IUnknown_QueryInterface(unk, &IID_IHTMLTextContainer, (void**)&txtcont);
    ok(hres == S_OK, "Could not get IHTMLTextContainer: %08x\n", hres);

    hres = IHTMLTextContainer_get_scrollLeft(txtcont, &l2);
    IHTMLTextContainer_Release(txtcont);
    ok(hres == S_OK, "IHTMLTextContainer::get_scrollLeft failed: %d\n", l2);
    ok(l == l2, "unexpected left %d, expected %d\n", l2, l);
}
