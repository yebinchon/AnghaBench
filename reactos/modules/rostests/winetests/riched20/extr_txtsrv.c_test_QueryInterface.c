
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IUnknown ;
typedef int ITextServices ;
typedef int ITextHost ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HRESULT ;


 int IID_IRichEditOle ;
 int IID_ITextDocument ;
 int IRichEditOle_QueryInterface (int *,int *,void**) ;
 int IRichEditOle_Release (int *) ;
 int ITextDocument_QueryInterface (int *,int *,void**) ;
 int ITextDocument_Release (int *) ;
 int ITextHost_Release (int *) ;
 int ITextServices_QueryInterface (int *,int *,void**) ;
 int ITextServices_Release (int *) ;
 int S_OK ;
 int get_refcount (int *) ;
 int init_texthost (int **,int **) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_QueryInterface(void)
{
    ITextServices *txtserv;
    ITextHost *host;
    HRESULT hres;
    IRichEditOle *reole, *txtsrv_reole;
    ITextDocument *txtdoc, *txtsrv_txtdoc;
    ULONG refcount;

    if(!init_texthost(&txtserv, &host))
        return;

    refcount = get_refcount((IUnknown *)txtserv);
    ok(refcount == 1, "got wrong ref count: %d\n", refcount);


    hres = ITextServices_QueryInterface(txtserv, &IID_IRichEditOle, (void **)&txtsrv_reole);
    ok(hres == S_OK, "ITextServices_QueryInterface: 0x%08x\n", hres);
    refcount = get_refcount((IUnknown *)txtserv);
    ok(refcount == 2, "got wrong ref count: %d\n", refcount);
    refcount = get_refcount((IUnknown *)txtsrv_reole);
    ok(refcount == 2, "got wrong ref count: %d\n", refcount);

    hres = IRichEditOle_QueryInterface(txtsrv_reole, &IID_ITextDocument, (void **)&txtdoc);
    ok(hres == S_OK, "IRichEditOle_QueryInterface: 0x%08x\n", hres);
    refcount = get_refcount((IUnknown *)txtserv);
    ok(refcount == 3, "got wrong ref count: %d\n", refcount);
    refcount = get_refcount((IUnknown *)txtsrv_reole);
    ok(refcount == 3, "got wrong ref count: %d\n", refcount);

    ITextDocument_Release(txtdoc);
    refcount = get_refcount((IUnknown *)txtserv);
    ok(refcount == 2, "got wrong ref count: %d\n", refcount);
    IRichEditOle_Release(txtsrv_reole);
    refcount = get_refcount((IUnknown *)txtserv);
    ok(refcount == 1, "got wrong ref count: %d\n", refcount);


    hres = ITextServices_QueryInterface(txtserv, &IID_ITextDocument, (void **)&txtsrv_txtdoc);
    ok(hres == S_OK, "ITextServices_QueryInterface: 0x%08x\n", hres);
    refcount = get_refcount((IUnknown *)txtserv);
    ok(refcount == 2, "got wrong ref count: %d\n", refcount);
    refcount = get_refcount((IUnknown *)txtsrv_txtdoc);
    ok(refcount == 2, "got wrong ref count: %d\n", refcount);

    hres = ITextDocument_QueryInterface(txtsrv_txtdoc, &IID_IRichEditOle, (void **)&reole);
    ok(hres == S_OK, "ITextDocument_QueryInterface: 0x%08x\n", hres);
    refcount = get_refcount((IUnknown *)txtserv);
    ok(refcount == 3, "got wrong ref count: %d\n", refcount);
    refcount = get_refcount((IUnknown *)txtsrv_txtdoc);
    ok(refcount == 3, "got wrong ref count: %d\n", refcount);

    IRichEditOle_Release(reole);
    refcount = get_refcount((IUnknown *)txtserv);
    ok(refcount == 2, "got wrong ref count: %d\n", refcount);
    ITextDocument_Release(txtsrv_txtdoc);
    refcount = get_refcount((IUnknown *)txtserv);
    ok(refcount == 1, "got wrong ref count: %d\n", refcount);

    ITextServices_Release(txtserv);
    ITextHost_Release(host);
}
