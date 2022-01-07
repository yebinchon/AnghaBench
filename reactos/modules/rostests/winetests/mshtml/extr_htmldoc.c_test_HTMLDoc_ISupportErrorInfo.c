
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ISupportErrorInfo ;
typedef int IHTMLDocument2 ;
typedef int * HRESULT ;


 int * IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IErrorInfo ;
 int IID_ISupportErrorInfo ;
 int * ISupportErrorInfo_InterfaceSupportsErrorInfo (int *,int *) ;
 int ISupportErrorInfo_Release (int *) ;
 int * S_FALSE ;
 int * S_OK ;
 int * create_document () ;
 int ok (int,char*,int *) ;
 int release_document (int *) ;

__attribute__((used)) static void test_HTMLDoc_ISupportErrorInfo(void)
{
    IHTMLDocument2 *doc;
    HRESULT hres;
    ISupportErrorInfo *sinfo;

    doc = create_document();

    hres = IHTMLDocument2_QueryInterface(doc, &IID_ISupportErrorInfo, (void**)&sinfo);
    ok(hres == S_OK, "got %x\n", hres);
    ok(sinfo != ((void*)0), "got %p\n", sinfo);
    if(sinfo)
    {
        hres = ISupportErrorInfo_InterfaceSupportsErrorInfo(sinfo, &IID_IErrorInfo);
        ok(hres == S_FALSE, "Expected S_OK, got %x\n", hres);
        ISupportErrorInfo_Release(sinfo);
    }

    release_document(doc);
}
