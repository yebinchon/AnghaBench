
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xmlParserErrors ;
typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_5__ {scalar_t__ errNo; int instate; } ;


 scalar_t__ CMP6 (int ,char,float,char,char,char,char) ;
 scalar_t__ CMP8 (int ,char,char,char,char,char,char,char,char) ;
 scalar_t__ CMP9 (int ,char,char,char,char,unsigned char,char,char,char,char) ;
 int CUR_PTR ;
 int SKIP (int) ;
 scalar_t__ SKIP_BLANKS ;
 int XML_ATTRIBUTE_FIXED ;
 int XML_ATTRIBUTE_IMPLIED ;
 int XML_ATTRIBUTE_NONE ;
 int XML_ATTRIBUTE_REQUIRED ;
 int XML_ERR_SPACE_REQUIRED ;
 int XML_PARSER_DTD ;
 int xmlFatalErrMsg (TYPE_1__*,int ,char*) ;
 int * xmlParseAttValue (TYPE_1__*) ;

int
xmlParseDefaultDecl(xmlParserCtxtPtr ctxt, xmlChar **value) {
    int val;
    xmlChar *ret;

    *value = ((void*)0);
    if (CMP9(CUR_PTR, '#', 'R', 'E', 'Q', 'U', 'I', 'R', 'E', 'D')) {
 SKIP(9);
 return(XML_ATTRIBUTE_REQUIRED);
    }
    if (CMP8(CUR_PTR, '#', 'I', 'M', 'P', 'L', 'I', 'E', 'D')) {
 SKIP(8);
 return(XML_ATTRIBUTE_IMPLIED);
    }
    val = XML_ATTRIBUTE_NONE;
    if (CMP6(CUR_PTR, '#', 'F', 'I', 'X', 'E', 'D')) {
 SKIP(6);
 val = XML_ATTRIBUTE_FIXED;
 if (SKIP_BLANKS == 0) {
     xmlFatalErrMsg(ctxt, XML_ERR_SPACE_REQUIRED,
      "Space required after '#FIXED'\n");
 }
    }
    ret = xmlParseAttValue(ctxt);
    ctxt->instate = XML_PARSER_DTD;
    if (ret == ((void*)0)) {
 xmlFatalErrMsg(ctxt, (xmlParserErrors)ctxt->errNo,
         "Attribute default value declaration error\n");
    } else
        *value = ret;
    return(val);
}
