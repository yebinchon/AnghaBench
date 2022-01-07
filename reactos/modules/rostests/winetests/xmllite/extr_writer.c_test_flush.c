
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXmlWriter ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateXmlWriter (int *,void**,int *) ;
 int IID_IXmlWriter ;
 scalar_t__ IXmlWriter_Flush (int *) ;
 int IXmlWriter_Release (int *) ;
 scalar_t__ IXmlWriter_SetOutput (int *,int *) ;
 scalar_t__ IXmlWriter_WriteStartDocument (int *,int ) ;
 scalar_t__ S_OK ;
 int XmlStandalone_Yes ;
 scalar_t__ g_write_len ;
 int ok (int,char*,scalar_t__) ;
 int teststream ;

__attribute__((used)) static void test_flush(void)
{
    IXmlWriter *writer;
    HRESULT hr;

    hr = CreateXmlWriter(&IID_IXmlWriter, (void**)&writer, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    hr = IXmlWriter_SetOutput(writer, (IUnknown*)&teststream);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartDocument(writer, XmlStandalone_Yes);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    g_write_len = 0;
    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(g_write_len > 0, "got %d\n", g_write_len);

    g_write_len = 1;
    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(g_write_len == 0, "got %d\n", g_write_len);


    g_write_len = 1;
    IXmlWriter_Release(writer);
    ok(g_write_len == 0, "got %d\n", g_write_len);
}
