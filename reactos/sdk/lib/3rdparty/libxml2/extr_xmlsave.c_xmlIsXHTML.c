
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;


 int XHTML_FRAME_PUBLIC_ID ;
 int XHTML_FRAME_SYSTEM_ID ;
 int XHTML_STRICT_PUBLIC_ID ;
 int XHTML_STRICT_SYSTEM_ID ;
 int XHTML_TRANS_PUBLIC_ID ;
 int XHTML_TRANS_SYSTEM_ID ;
 scalar_t__ xmlStrEqual (int const*,int ) ;

int
xmlIsXHTML(const xmlChar *systemID, const xmlChar *publicID) {
    if ((systemID == ((void*)0)) && (publicID == ((void*)0)))
 return(-1);
    if (publicID != ((void*)0)) {
 if (xmlStrEqual(publicID, XHTML_STRICT_PUBLIC_ID)) return(1);
 if (xmlStrEqual(publicID, XHTML_FRAME_PUBLIC_ID)) return(1);
 if (xmlStrEqual(publicID, XHTML_TRANS_PUBLIC_ID)) return(1);
    }
    if (systemID != ((void*)0)) {
 if (xmlStrEqual(systemID, XHTML_STRICT_SYSTEM_ID)) return(1);
 if (xmlStrEqual(systemID, XHTML_FRAME_SYSTEM_ID)) return(1);
 if (xmlStrEqual(systemID, XHTML_TRANS_SYSTEM_ID)) return(1);
    }
    return(0);
}
