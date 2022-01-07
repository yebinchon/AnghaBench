
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;
typedef char xmlChar ;


 int XML_ERR_RESERVED_XML_NAME ;
 int XML_NS_ERR_COLON ;
 int xmlFatalErr (int ,int ,int *) ;
 int xmlFatalErrMsg (int ,int ,char*) ;
 int xmlNsErr (int ,int ,char*,char const*,int *,int *) ;
 char* xmlParseName (int ) ;
 scalar_t__ xmlStrEqual (char const*,char const*) ;
 int * xmlStrchr (char const*,char) ;
 int ** xmlW3CPIs ;
 int xmlWarningMsg (int ,int ,char*,int *,int *) ;

const xmlChar *
xmlParsePITarget(xmlParserCtxtPtr ctxt) {
    const xmlChar *name;

    name = xmlParseName(ctxt);
    if ((name != ((void*)0)) &&
        ((name[0] == 'x') || (name[0] == 'X')) &&
        ((name[1] == 'm') || (name[1] == 'M')) &&
        ((name[2] == 'l') || (name[2] == 'L'))) {
 int i;
 if ((name[0] == 'x') && (name[1] == 'm') &&
     (name[2] == 'l') && (name[3] == 0)) {
     xmlFatalErrMsg(ctxt, XML_ERR_RESERVED_XML_NAME,
   "XML declaration allowed only at the start of the document\n");
     return(name);
 } else if (name[3] == 0) {
     xmlFatalErr(ctxt, XML_ERR_RESERVED_XML_NAME, ((void*)0));
     return(name);
 }
 for (i = 0;;i++) {
     if (xmlW3CPIs[i] == ((void*)0)) break;
     if (xmlStrEqual(name, (const xmlChar *)xmlW3CPIs[i]))
         return(name);
 }
 xmlWarningMsg(ctxt, XML_ERR_RESERVED_XML_NAME,
        "xmlParsePITarget: invalid name prefix 'xml'\n",
        ((void*)0), ((void*)0));
    }
    if ((name != ((void*)0)) && (xmlStrchr(name, ':') != ((void*)0))) {
 xmlNsErr(ctxt, XML_NS_ERR_COLON,
   "colons are forbidden from PI names '%s'\n", name, ((void*)0), ((void*)0));
    }
    return(name);
}
