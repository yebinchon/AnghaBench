
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;
typedef int xmlChar ;


 scalar_t__ CMP7 (int ,char,char,char,char,char,char,char) ;
 int CUR_PTR ;
 int NEXT ;
 char RAW ;
 int SKIP (int) ;
 int SKIP_BLANKS ;
 int XML_ERR_EQUAL_REQUIRED ;
 int XML_ERR_STRING_NOT_CLOSED ;
 int XML_ERR_STRING_NOT_STARTED ;
 int xmlFatalErr (int ,int ,int *) ;
 int * xmlParseVersionNum (int ) ;

xmlChar *
xmlParseVersionInfo(xmlParserCtxtPtr ctxt) {
    xmlChar *version = ((void*)0);

    if (CMP7(CUR_PTR, 'v', 'e', 'r', 's', 'i', 'o', 'n')) {
 SKIP(7);
 SKIP_BLANKS;
 if (RAW != '=') {
     xmlFatalErr(ctxt, XML_ERR_EQUAL_REQUIRED, ((void*)0));
     return(((void*)0));
        }
 NEXT;
 SKIP_BLANKS;
 if (RAW == '"') {
     NEXT;
     version = xmlParseVersionNum(ctxt);
     if (RAW != '"') {
  xmlFatalErr(ctxt, XML_ERR_STRING_NOT_CLOSED, ((void*)0));
     } else
         NEXT;
 } else if (RAW == '\''){
     NEXT;
     version = xmlParseVersionNum(ctxt);
     if (RAW != '\'') {
  xmlFatalErr(ctxt, XML_ERR_STRING_NOT_CLOSED, ((void*)0));
     } else
         NEXT;
 } else {
     xmlFatalErr(ctxt, XML_ERR_STRING_NOT_STARTED, ((void*)0));
 }
    }
    return(version);
}
