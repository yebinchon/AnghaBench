
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG_PTR ;
typedef int IXmlReader ;
typedef int HRESULT ;


 int CreateXmlReader (int *,void**,int *) ;
 int IID_IXmlReader ;
 int IXmlReader_GetProperty (int *,int ,int*) ;
 int IXmlReader_Release (int *) ;
 int IXmlReader_SetProperty (int *,int ,int ) ;
 int S_OK ;
 int XmlReaderProperty_MaxElementDepth ;
 int XmlReaderProperty_MultiLanguage ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_reader_properties(void)
{
    IXmlReader *reader;
    LONG_PTR value;
    HRESULT hr;

    hr = CreateXmlReader(&IID_IXmlReader, (void**)&reader, ((void*)0));
    ok(hr == S_OK, "S_OK, got %08x\n", hr);

    value = 0;
    hr = IXmlReader_GetProperty(reader, XmlReaderProperty_MaxElementDepth, &value);
    ok(hr == S_OK, "GetProperty failed: %08x\n", hr);
    ok(value == 256, "Unexpected default max depth value %ld\n", value);

    hr = IXmlReader_SetProperty(reader, XmlReaderProperty_MultiLanguage, 0);
    ok(hr == S_OK, "SetProperty failed: %08x\n", hr);

    hr = IXmlReader_SetProperty(reader, XmlReaderProperty_MaxElementDepth, 0);
    ok(hr == S_OK, "SetProperty failed: %08x\n", hr);

    value = 256;
    hr = IXmlReader_GetProperty(reader, XmlReaderProperty_MaxElementDepth, &value);
    ok(hr == S_OK, "GetProperty failed: %08x\n", hr);
    ok(value == 0, "Unexpected max depth value %ld\n", value);

    IXmlReader_Release(reader);
}
