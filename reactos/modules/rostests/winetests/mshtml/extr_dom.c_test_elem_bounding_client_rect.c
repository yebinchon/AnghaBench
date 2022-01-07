
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int IUnknown ;
typedef int IHTMLRect ;
typedef int IHTMLElement2 ;
typedef scalar_t__ HRESULT ;


 int IHTMLElement2_Release (int *) ;
 scalar_t__ IHTMLElement2_getBoundingClientRect (int *,int **) ;
 int IHTMLRect_Release (int *) ;
 scalar_t__ IHTMLRect_get_bottom (int *,int*) ;
 scalar_t__ IHTMLRect_get_left (int *,int*) ;
 scalar_t__ IHTMLRect_get_right (int *,int*) ;
 scalar_t__ IHTMLRect_get_top (int *,int*) ;
 int IID_IHTMLRect ;
 scalar_t__ S_OK ;
 int * get_elem2_iface (int *) ;
 int ok (int,char*,...) ;
 int test_disp (int *,int *,char*) ;

__attribute__((used)) static void test_elem_bounding_client_rect(IUnknown *unk)
{
    IHTMLRect *rect, *rect2;
    IHTMLElement2 *elem2;
    LONG l;
    HRESULT hres;

    elem2 = get_elem2_iface(unk);
    hres = IHTMLElement2_getBoundingClientRect(elem2, &rect);
    ok(hres == S_OK, "getBoundingClientRect failed: %08x\n", hres);
    hres = IHTMLElement2_getBoundingClientRect(elem2, &rect2);
    IHTMLElement2_Release(elem2);
    ok(hres == S_OK, "getBoundingClientRect failed: %08x\n", hres);
    ok(rect != ((void*)0), "rect == NULL\n");
    ok(rect != rect2, "rect == rect2\n");
    IHTMLRect_Release(rect2);

    test_disp((IUnknown*)rect, &IID_IHTMLRect, "[object]");

    l = 0xdeadbeef;
    hres = IHTMLRect_get_top(rect, &l);
    ok(hres == S_OK, "get_top failed: %08x\n", hres);
    ok(l != 0xdeadbeef, "l = 0xdeadbeef\n");

    l = 0xdeadbeef;
    hres = IHTMLRect_get_left(rect, &l);
    ok(hres == S_OK, "get_left failed: %08x\n", hres);
    ok(l != 0xdeadbeef, "l = 0xdeadbeef\n");

    l = 0xdeadbeef;
    hres = IHTMLRect_get_bottom(rect, &l);
    ok(hres == S_OK, "get_bottom failed: %08x\n", hres);
    ok(l != 0xdeadbeef, "l = 0xdeadbeef\n");

    l = 0xdeadbeef;
    hres = IHTMLRect_get_right(rect, &l);
    ok(hres == S_OK, "get_right failed: %08x\n", hres);
    ok(l != 0xdeadbeef, "l = 0xdeadbeef\n");

    IHTMLRect_Release(rect);
}
