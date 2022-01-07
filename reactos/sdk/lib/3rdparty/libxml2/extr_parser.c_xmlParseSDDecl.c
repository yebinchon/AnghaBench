
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;


 scalar_t__ CMP10 (int ,char,char,char,char,char,char,char,char,char,char) ;
 int CUR_PTR ;
 int NEXT ;
 char NXT (int) ;
 char RAW ;
 int SKIP (int) ;
 int SKIP_BLANKS ;
 int XML_ERR_EQUAL_REQUIRED ;
 int XML_ERR_STANDALONE_VALUE ;
 int XML_ERR_STRING_NOT_CLOSED ;
 int XML_ERR_STRING_NOT_STARTED ;
 int xmlFatalErr (int ,int ,int *) ;

int
xmlParseSDDecl(xmlParserCtxtPtr ctxt) {
    int standalone = -2;

    SKIP_BLANKS;
    if (CMP10(CUR_PTR, 's', 't', 'a', 'n', 'd', 'a', 'l', 'o', 'n', 'e')) {
 SKIP(10);
        SKIP_BLANKS;
 if (RAW != '=') {
     xmlFatalErr(ctxt, XML_ERR_EQUAL_REQUIRED, ((void*)0));
     return(standalone);
        }
 NEXT;
 SKIP_BLANKS;
        if (RAW == '\''){
     NEXT;
     if ((RAW == 'n') && (NXT(1) == 'o')) {
         standalone = 0;
                SKIP(2);
     } else if ((RAW == 'y') && (NXT(1) == 'e') &&
                (NXT(2) == 's')) {
         standalone = 1;
  SKIP(3);
            } else {
  xmlFatalErr(ctxt, XML_ERR_STANDALONE_VALUE, ((void*)0));
     }
     if (RAW != '\'') {
  xmlFatalErr(ctxt, XML_ERR_STRING_NOT_CLOSED, ((void*)0));
     } else
         NEXT;
 } else if (RAW == '"'){
     NEXT;
     if ((RAW == 'n') && (NXT(1) == 'o')) {
         standalone = 0;
  SKIP(2);
     } else if ((RAW == 'y') && (NXT(1) == 'e') &&
                (NXT(2) == 's')) {
         standalone = 1;
                SKIP(3);
            } else {
  xmlFatalErr(ctxt, XML_ERR_STANDALONE_VALUE, ((void*)0));
     }
     if (RAW != '"') {
  xmlFatalErr(ctxt, XML_ERR_STRING_NOT_CLOSED, ((void*)0));
     } else
         NEXT;
 } else {
     xmlFatalErr(ctxt, XML_ERR_STRING_NOT_STARTED, ((void*)0));
        }
    }
    return(standalone);
}
