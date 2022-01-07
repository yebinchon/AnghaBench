
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IXmlWriter ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IXmlWriter_WriteAttributeString (int *,int *,char const*,int *,char const*) ;
 scalar_t__ IXmlWriter_WriteCData (int *,char const*) ;
 scalar_t__ IXmlWriter_WriteCharEntity (int *,char const) ;
 scalar_t__ IXmlWriter_WriteChars (int *,char const*,int) ;
 scalar_t__ IXmlWriter_WriteComment (int *,char const*) ;
 scalar_t__ IXmlWriter_WriteElementString (int *,int *,char const*,int *,char const*) ;
 scalar_t__ IXmlWriter_WriteEndDocument (int *) ;
 scalar_t__ IXmlWriter_WriteEndElement (int *) ;
 scalar_t__ IXmlWriter_WriteEntityRef (int *,char const*) ;
 scalar_t__ IXmlWriter_WriteFullEndElement (int *) ;
 scalar_t__ IXmlWriter_WriteName (int *,char const*) ;
 scalar_t__ IXmlWriter_WriteNmToken (int *,char const*) ;
 scalar_t__ IXmlWriter_WriteProcessingInstruction (int *,char const*,char const*) ;
 scalar_t__ IXmlWriter_WriteQualifiedName (int *,char const*,int *) ;
 scalar_t__ IXmlWriter_WriteRaw (int *,char const*) ;
 scalar_t__ IXmlWriter_WriteRawChars (int *,char const*,int) ;
 scalar_t__ IXmlWriter_WriteStartDocument (int *,int ) ;
 scalar_t__ IXmlWriter_WriteStartElement (int *,int *,char const*,int *) ;
 scalar_t__ IXmlWriter_WriteString (int *,char const*) ;
 int XmlStandalone_Omit ;
 int ok (int,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void check_writer_state(IXmlWriter *writer, HRESULT exp_hr)
{
    static const WCHAR aW[] = {'a',0};
    HRESULT hr;



    hr = IXmlWriter_WriteAttributeString(writer, ((void*)0), aW, ((void*)0), aW);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteCData(writer, aW);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteCharEntity(writer, aW[0]);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteChars(writer, aW, 1);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteComment(writer, aW);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);



    hr = IXmlWriter_WriteElementString(writer, ((void*)0), aW, ((void*)0), aW);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteEndDocument(writer);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteEndElement(writer);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteEntityRef(writer, aW);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteFullEndElement(writer);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteName(writer, aW);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteNmToken(writer, aW);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);




    hr = IXmlWriter_WriteProcessingInstruction(writer, aW, aW);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteQualifiedName(writer, aW, ((void*)0));
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteRaw(writer, aW);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteRawChars(writer, aW, 1);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteStartDocument(writer, XmlStandalone_Omit);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), aW, ((void*)0));
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);

    hr = IXmlWriter_WriteString(writer, aW);
    ok(hr == exp_hr, "got 0x%08x, expected 0x%08x\n", hr, exp_hr);



}
