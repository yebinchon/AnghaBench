
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IXmlWriterOutput ;
typedef int IXmlWriter ;
typedef int IUnknown ;
typedef int IStream ;
typedef int HRESULT ;
typedef int HGLOBAL ;


 int CreateStreamOnHGlobal (int *,int ,int **) ;
 int CreateXmlWriter (int *,void**,int *) ;
 int CreateXmlWriterOutputWithEncodingName (int *,int *,char const*,int **) ;
 int GetHGlobalFromStream (int *,int *) ;
 unsigned char* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int IID_IXmlWriter ;
 int IStream_Release (int *) ;
 int IUnknown_Release (int *) ;
 int IXmlWriter_Flush (int *) ;
 int IXmlWriter_Release (int *) ;
 int IXmlWriter_SetOutput (int *,int *) ;
 int IXmlWriter_WriteElementString (int *,int *,int ,int *,int *) ;
 int IXmlWriter_WriteProcessingInstruction (int *,char const*,char const*) ;
 int IXmlWriter_WriteStartDocument (int *,int ) ;
 int IXmlWriter_WriteStartElement (int *,int *,int ,int *) ;
 int S_OK ;
 int TRUE ;
 int XmlStandalone_Yes ;
 int XmlWriterProperty_Indent ;
 int XmlWriterProperty_OmitXmlDeclaration ;
 int aW ;
 int ok (int,char*,unsigned char,...) ;
 int writer_set_property (int *,int ) ;

__attribute__((used)) static void test_bom(void)
{
    static const WCHAR versionW[] = {'v','e','r','s','i','o','n','=','"','1','.','0','"',0};
    static const WCHAR utf16W[] = {'u','t','f','-','1','6',0};
    static const WCHAR xmlW[] = {'x','m','l',0};
    IXmlWriterOutput *output;
    unsigned char *ptr;
    IXmlWriter *writer;
    IStream *stream;
    HGLOBAL hglobal;
    HRESULT hr;

    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = CreateXmlWriterOutputWithEncodingName((IUnknown*)stream, ((void*)0), utf16W, &output);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = CreateXmlWriter(&IID_IXmlWriter, (void**)&writer, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    writer_set_property(writer, XmlWriterProperty_OmitXmlDeclaration);

    hr = IXmlWriter_SetOutput(writer, output);
    ok(hr == S_OK, "got 0x%08x\n", hr);


    hr = IXmlWriter_WriteStartDocument(writer, XmlStandalone_Yes);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = GetHGlobalFromStream(stream, &hglobal);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    ptr = GlobalLock(hglobal);
    ok(ptr[0] == 0xff && ptr[1] == 0xfe, "got %x,%x\n", ptr[0], ptr[1]);
    GlobalUnlock(hglobal);

    IStream_Release(stream);
    IUnknown_Release(output);


    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = CreateXmlWriterOutputWithEncodingName((IUnknown*)stream, ((void*)0), utf16W, &output);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = IXmlWriter_SetOutput(writer, output);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteProcessingInstruction(writer, xmlW, versionW);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = GetHGlobalFromStream(stream, &hglobal);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    ptr = GlobalLock(hglobal);
    ok(ptr[0] == 0xff && ptr[1] == 0xfe, "got %x,%x\n", ptr[0], ptr[1]);
    GlobalUnlock(hglobal);

    IUnknown_Release(output);
    IStream_Release(stream);


    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = CreateXmlWriterOutputWithEncodingName((IUnknown*)stream, ((void*)0), utf16W, &output);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = IXmlWriter_SetOutput(writer, output);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), aW, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = GetHGlobalFromStream(stream, &hglobal);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    ptr = GlobalLock(hglobal);
    ok(ptr[0] == 0xff && ptr[1] == 0xfe, "got %x,%x\n", ptr[0], ptr[1]);
    GlobalUnlock(hglobal);

    IUnknown_Release(output);
    IStream_Release(stream);


    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = CreateXmlWriterOutputWithEncodingName((IUnknown*)stream, ((void*)0), utf16W, &output);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = IXmlWriter_SetOutput(writer, output);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    writer_set_property(writer, XmlWriterProperty_Indent);

    hr = IXmlWriter_WriteElementString(writer, ((void*)0), aW, ((void*)0), ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = GetHGlobalFromStream(stream, &hglobal);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    ptr = GlobalLock(hglobal);
    ok(ptr[0] == 0xff && ptr[1] == 0xfe && ptr[2] == '<', "Unexpected output: %#x,%#x,%#x\n",
            ptr[0], ptr[1], ptr[2]);
    GlobalUnlock(hglobal);

    IUnknown_Release(output);
    IStream_Release(stream);

    IXmlWriter_Release(writer);
}
