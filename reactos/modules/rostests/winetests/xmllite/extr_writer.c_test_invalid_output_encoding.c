
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXmlWriter ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IXmlWriter_Flush (int *) ;
 scalar_t__ IXmlWriter_SetOutput (int *,int *) ;
 scalar_t__ IXmlWriter_WriteAttributeString (int *,int *,int ,int *,int ) ;
 scalar_t__ IXmlWriter_WriteCData (int *,int ) ;
 scalar_t__ IXmlWriter_WriteCharEntity (int *,int) ;
 scalar_t__ IXmlWriter_WriteChars (int *,int ,int) ;
 scalar_t__ IXmlWriter_WriteComment (int *,int ) ;
 scalar_t__ IXmlWriter_WriteElementString (int *,int *,int ,int *,int *) ;
 scalar_t__ IXmlWriter_WriteEndDocument (int *) ;
 scalar_t__ IXmlWriter_WriteEndElement (int *) ;
 scalar_t__ IXmlWriter_WriteEntityRef (int *,int ) ;
 scalar_t__ IXmlWriter_WriteFullEndElement (int *) ;
 scalar_t__ IXmlWriter_WriteName (int *,int ) ;
 scalar_t__ IXmlWriter_WriteNmToken (int *,int ) ;
 scalar_t__ IXmlWriter_WriteProcessingInstruction (int *,int ,int ) ;
 scalar_t__ IXmlWriter_WriteQualifiedName (int *,int ,int *) ;
 scalar_t__ IXmlWriter_WriteRaw (int *,int ) ;
 scalar_t__ IXmlWriter_WriteRawChars (int *,int ,int) ;
 scalar_t__ IXmlWriter_WriteStartDocument (int *,int ) ;
 scalar_t__ IXmlWriter_WriteStartElement (int *,int *,int ,int *) ;
 scalar_t__ IXmlWriter_WriteString (int *,int ) ;
 scalar_t__ MX_E_ENCODING ;
 scalar_t__ S_OK ;
 int XmlStandalone_Yes ;
 int aW ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_invalid_output_encoding(IXmlWriter *writer, IUnknown *output)
{
    HRESULT hr;

    hr = IXmlWriter_SetOutput(writer, output);
    ok(hr == S_OK, "Failed to set output, hr %#x.\n", hr);



    hr = IXmlWriter_WriteAttributeString(writer, ((void*)0), aW, ((void*)0), aW);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteCData(writer, aW);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteCharEntity(writer, 0x100);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteChars(writer, aW, 1);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteComment(writer, aW);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);



    hr = IXmlWriter_WriteElementString(writer, ((void*)0), aW, ((void*)0), ((void*)0));
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteEndDocument(writer);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteEndElement(writer);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteEntityRef(writer, aW);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteFullEndElement(writer);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteName(writer, aW);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteNmToken(writer, aW);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);




    hr = IXmlWriter_WriteProcessingInstruction(writer, aW, aW);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteQualifiedName(writer, aW, ((void*)0));
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteRaw(writer, aW);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteRawChars(writer, aW, 1);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteStartDocument(writer, XmlStandalone_Yes);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), aW, ((void*)0));
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteString(writer, aW);
    ok(hr == MX_E_ENCODING, "Unexpected hr %#x.\n", hr);




    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "Failed to flush, hr %#x.\n", hr);
}
