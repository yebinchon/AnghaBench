
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XmlWriterProperty ;
typedef int IXmlWriter ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IXmlWriter_SetProperty (int *,int ,int ) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void writer_set_property(IXmlWriter *writer, XmlWriterProperty property)
{
    HRESULT hr;

    hr = IXmlWriter_SetProperty(writer, property, TRUE);
    ok(hr == S_OK, "Failed to set writer property, hr %#x.\n", hr);
}
