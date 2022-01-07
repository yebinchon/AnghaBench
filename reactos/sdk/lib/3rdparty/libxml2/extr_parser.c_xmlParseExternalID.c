
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;
typedef int xmlChar ;


 scalar_t__ CMP6 (int ,char,unsigned char,char,char,char,char) ;
 char CUR ;
 int CUR_PTR ;
 int SHRINK ;
 int SKIP (int) ;
 scalar_t__ SKIP_BLANKS ;
 int XML_ERR_PUBID_REQUIRED ;
 int XML_ERR_SPACE_REQUIRED ;
 int XML_ERR_URI_REQUIRED ;
 int xmlFatalErr (int ,int ,int *) ;
 int xmlFatalErrMsg (int ,int ,char*) ;
 int * xmlParsePubidLiteral (int ) ;
 int * xmlParseSystemLiteral (int ) ;

xmlChar *
xmlParseExternalID(xmlParserCtxtPtr ctxt, xmlChar **publicID, int strict) {
    xmlChar *URI = ((void*)0);

    SHRINK;

    *publicID = ((void*)0);
    if (CMP6(CUR_PTR, 'S', 'Y', 'S', 'T', 'E', 'M')) {
        SKIP(6);
 if (SKIP_BLANKS == 0) {
     xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
                    "Space required after 'SYSTEM'\n");
 }
 URI = xmlParseSystemLiteral(ctxt);
 if (URI == ((void*)0)) {
     xmlFatalErr(ctxt, XML_ERR_URI_REQUIRED, ((void*)0));
        }
    } else if (CMP6(CUR_PTR, 'P', 'U', 'B', 'L', 'I', 'C')) {
        SKIP(6);
 if (SKIP_BLANKS == 0) {
     xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
      "Space required after 'PUBLIC'\n");
 }
 *publicID = xmlParsePubidLiteral(ctxt);
 if (*publicID == ((void*)0)) {
     xmlFatalErr(ctxt, XML_ERR_PUBID_REQUIRED, ((void*)0));
 }
 if (strict) {



     if (SKIP_BLANKS == 0) {
  xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
   "Space required after the Public Identifier\n");
     }
 } else {






     if (SKIP_BLANKS == 0) return(((void*)0));
     if ((CUR != '\'') && (CUR != '"')) return(((void*)0));
 }
 URI = xmlParseSystemLiteral(ctxt);
 if (URI == ((void*)0)) {
     xmlFatalErr(ctxt, XML_ERR_URI_REQUIRED, ((void*)0));
        }
    }
    return(URI);
}
