
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG_PTR ;
typedef int IXmlReader ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 scalar_t__ IXmlReader_GetProperty (int *,int ,scalar_t__*) ;
 int IXmlReader_IsEOF (int *) ;
 scalar_t__ S_OK ;
 scalar_t__ XmlReadState_EndOfFile ;
 int XmlReaderProperty_ReadState ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_eof_state(IXmlReader *reader, BOOL eof)
{
    LONG_PTR state;
    HRESULT hr;

    ok(IXmlReader_IsEOF(reader) == eof, "Unexpected IsEOF() result\n");
    hr = IXmlReader_GetProperty(reader, XmlReaderProperty_ReadState, &state);
    ok(hr == S_OK, "GetProperty() failed, %#x\n", hr);
    ok((state == XmlReadState_EndOfFile) == eof, "Unexpected EndOfFile state %ld\n", state);
}
