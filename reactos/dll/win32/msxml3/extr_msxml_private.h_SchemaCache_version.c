
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSXML_VERSION ;
typedef int CLSID ;


 int const CLSID_XMLSchemaCache ;
 int const CLSID_XMLSchemaCache30 ;
 int const CLSID_XMLSchemaCache40 ;
 int const CLSID_XMLSchemaCache60 ;





__attribute__((used)) static inline const CLSID* SchemaCache_version(MSXML_VERSION v)
{
    switch (v)
    {
    default:
    case 128: return &CLSID_XMLSchemaCache;
    case 131: return &CLSID_XMLSchemaCache30;
    case 130: return &CLSID_XMLSchemaCache40;
    case 129: return &CLSID_XMLSchemaCache60;
    }
}
