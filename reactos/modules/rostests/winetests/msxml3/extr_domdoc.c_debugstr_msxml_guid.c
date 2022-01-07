
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;


 int IID_IMXNamespaceManager ;
 int IID_IXMLDOMDocument ;
 int IID_IXMLDOMDocument2 ;
 int IID_IXMLDOMDocument3 ;
 int IID_IXMLDOMSchemaCollection ;
 int IID_IXSLTemplate ;
 scalar_t__ IsEqualIID (int *,int ) ;
 char const* wine_dbgstr_guid (int ) ;

__attribute__((used)) static const char *debugstr_msxml_guid(REFIID riid)
{
    if(!riid)
        return "(null)";

    if (IsEqualIID(&IID_IXMLDOMDocument, riid))
        return "IXMLDOMDocument";
    else if (IsEqualIID(&IID_IXMLDOMDocument2, riid))
        return "IXMLDOMDocument2";
    else if (IsEqualIID(&IID_IXMLDOMDocument3, riid))
        return "IXMLDOMDocument3";
    else if (IsEqualIID(&IID_IXMLDOMSchemaCollection, riid))
        return "IXMLDOMSchemaCollection";
    else if (IsEqualIID(&IID_IXSLTemplate, riid))
        return "IXSLTemplate";
    else if (IsEqualIID(&IID_IMXNamespaceManager, riid))
        return "IMXNamespaceManager";
    else
        return wine_dbgstr_guid(riid);
}
