
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSXML_VERSION ;
typedef int CLSID ;


 int const CLSID_DOMDocument ;
 int const CLSID_DOMDocument30 ;
 int const CLSID_DOMDocument40 ;
 int const CLSID_DOMDocument60 ;





__attribute__((used)) static inline const CLSID* DOMDocument_version(MSXML_VERSION v)
{
    switch (v)
    {
    default:
    case 128: return &CLSID_DOMDocument;
    case 131: return &CLSID_DOMDocument30;
    case 130: return &CLSID_DOMDocument40;
    case 129: return &CLSID_DOMDocument60;
    }
}
