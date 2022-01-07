
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clsid ;
typedef int ULARGE_INTEGER ;
typedef int IXMLDOMDocument ;
typedef int IUnknown ;
typedef int IPersistStreamInit ;
typedef int IPersistStream ;
typedef int IPersist ;
typedef scalar_t__ HRESULT ;
typedef int CLSID ;


 int CLSID_DOMDocument2 ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ E_NOTIMPL ;
 scalar_t__ E_POINTER ;
 int IID_IPersist ;
 int IID_IPersistStream ;
 int IID_IPersistStreamInit ;
 int IID_IXMLDOMDocument ;
 scalar_t__ IPersistStreamInit_GetClassID (int *,int *) ;
 scalar_t__ IPersistStreamInit_GetSizeMax (int *,int *) ;
 scalar_t__ IPersistStreamInit_InitNew (int *) ;
 int IPersistStreamInit_Release (int *) ;
 scalar_t__ IPersistStream_QueryInterface (int *,int *,void**) ;
 int IPersistStream_Release (int *) ;
 scalar_t__ IXMLDOMDocument_QueryInterface (int *,int *,void**) ;
 int IXMLDOMDocument_Release (int *) ;
 int IsEqualGUID (int *,int *) ;
 scalar_t__ S_OK ;
 int * create_document (int *) ;
 int memset (int *,int ,int) ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_persiststream(void)
{
    IPersistStreamInit *streaminit;
    IPersistStream *stream;
    IXMLDOMDocument *doc;
    ULARGE_INTEGER size;
    IPersist *persist;
    HRESULT hr;
    CLSID clsid;

    doc = create_document(&IID_IXMLDOMDocument);

    hr = IXMLDOMDocument_QueryInterface(doc, &IID_IPersistStreamInit, (void**)&streaminit);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IPersistStreamInit_InitNew(streaminit);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IPersistStreamInit_GetSizeMax(streaminit, &size);
    ok(hr == E_NOTIMPL, "got 0x%08x\n", hr);

    hr = IXMLDOMDocument_QueryInterface(doc, &IID_IPersistStream, (void **)&stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok((IUnknown *)stream == (IUnknown *)streaminit, "got %p, %p\n", stream, streaminit);

    hr = IPersistStream_QueryInterface(stream, &IID_IPersist, (void **)&persist);
    ok(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

    hr = IXMLDOMDocument_QueryInterface(doc, &IID_IPersist, (void **)&persist);
    ok(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

    hr = IPersistStreamInit_GetClassID(streaminit, ((void*)0));
    ok(hr == E_POINTER, "got 0x%08x\n", hr);

    memset(&clsid, 0, sizeof(clsid));
    hr = IPersistStreamInit_GetClassID(streaminit, &clsid);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(IsEqualGUID(&clsid, &CLSID_DOMDocument2), "wrong clsid %s\n", wine_dbgstr_guid(&clsid));

    IPersistStream_Release(stream);
    IPersistStreamInit_Release(streaminit);
    IXMLDOMDocument_Release(doc);
}
