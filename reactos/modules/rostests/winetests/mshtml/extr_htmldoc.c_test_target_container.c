
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int ITargetContainer ;
typedef int IOleContainer ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IOleContainer ;
 int IID_ITargetContainer ;
 int IOleContainer_Release (int *) ;
 scalar_t__ ITargetContainer_GetFramesContainer (int *,int **) ;
 int ITargetContainer_Release (int *) ;
 scalar_t__ S_OK ;
 int iface_cmp (int *,int *) ;
 int ok (int,char*,...) ;
 int test_enum_objects (int *) ;

__attribute__((used)) static void test_target_container(IHTMLDocument2 *doc)
{
    IOleContainer *ole_container, *doc_ole_container;
    ITargetContainer *target_container;
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_ITargetContainer, (void**)&target_container);
    ok(hres == S_OK, "Could not get ITargetContainer iface: %08x\n", hres);

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IOleContainer, (void**)&doc_ole_container);
    ok(hres == S_OK, "Could not get ITargetContainer iface: %08x\n", hres);

    ole_container = (void*)0xdeadbeef;
    hres = ITargetContainer_GetFramesContainer(target_container, &ole_container);
    ok(hres == S_OK, "GetFramesContainer failed: %08x\n", hres);
    ok(ole_container != ((void*)0), "ole_container == NULL\n");
    ok(iface_cmp((IUnknown*)ole_container, (IUnknown*)doc_ole_container), "ole_container != doc_ole_container\n");
    test_enum_objects(ole_container);
    IOleContainer_Release(ole_container);

    ITargetContainer_Release(target_container);
    IOleContainer_Release(doc_ole_container);
}
