
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;
typedef int * xmlEnumerationPtr ;


 scalar_t__ CMP8 (int ,char,char,char,char,char,char,char,char) ;
 int CUR_PTR ;
 int SKIP (int) ;
 scalar_t__ SKIP_BLANKS ;
 int XML_ATTRIBUTE_ENUMERATION ;
 int XML_ATTRIBUTE_NOTATION ;
 int XML_ERR_SPACE_REQUIRED ;
 int xmlFatalErrMsg (int ,int ,char*) ;
 int * xmlParseEnumerationType (int ) ;
 int * xmlParseNotationType (int ) ;

int
xmlParseEnumeratedType(xmlParserCtxtPtr ctxt, xmlEnumerationPtr *tree) {
    if (CMP8(CUR_PTR, 'N', 'O', 'T', 'A', 'T', 'I', 'O', 'N')) {
 SKIP(8);
 if (SKIP_BLANKS == 0) {
     xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
      "Space required after 'NOTATION'\n");
     return(0);
 }
 *tree = xmlParseNotationType(ctxt);
 if (*tree == ((void*)0)) return(0);
 return(XML_ATTRIBUTE_NOTATION);
    }
    *tree = xmlParseEnumerationType(ctxt);
    if (*tree == ((void*)0)) return(0);
    return(XML_ATTRIBUTE_ENUMERATION);
}
