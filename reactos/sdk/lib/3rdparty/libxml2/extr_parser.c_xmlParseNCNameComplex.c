
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_8__ {int options; scalar_t__ instate; int dict; TYPE_1__* input; } ;
struct TYPE_7__ {int cur; } ;


 size_t BASE_PTR ;
 int CUR_CHAR (int) ;
 size_t CUR_PTR ;
 int GROW ;
 int NEXTL (int) ;
 int XML_ERR_NAME_TOO_LONG ;
 int XML_MAX_NAME_LENGTH ;
 int XML_PARSER_CHUNK_SIZE ;
 scalar_t__ XML_PARSER_EOF ;
 int XML_PARSE_HUGE ;
 int nbParseNCNameComplex ;
 int const* xmlDictLookup (int ,size_t,int) ;
 int xmlFatalErr (TYPE_2__*,int ,char*) ;
 scalar_t__ xmlIsNameChar (TYPE_2__*,int) ;
 int xmlIsNameStartChar (TYPE_2__*,int) ;

__attribute__((used)) static const xmlChar *
xmlParseNCNameComplex(xmlParserCtxtPtr ctxt) {
    int len = 0, l;
    int c;
    int count = 0;
    size_t startPosition = 0;
    GROW;
    startPosition = CUR_PTR - BASE_PTR;
    c = CUR_CHAR(l);
    if ((c == ' ') || (c == '>') || (c == '/') ||
 (!xmlIsNameStartChar(ctxt, c) || (c == ':'))) {
 return(((void*)0));
    }

    while ((c != ' ') && (c != '>') && (c != '/') &&
    (xmlIsNameChar(ctxt, c) && (c != ':'))) {
 if (count++ > XML_PARSER_CHUNK_SIZE) {
            if ((len > XML_MAX_NAME_LENGTH) &&
                ((ctxt->options & XML_PARSE_HUGE) == 0)) {
                xmlFatalErr(ctxt, XML_ERR_NAME_TOO_LONG, "NCName");
                return(((void*)0));
            }
     count = 0;
     GROW;
            if (ctxt->instate == XML_PARSER_EOF)
                return(((void*)0));
 }
 len += l;
 NEXTL(l);
 c = CUR_CHAR(l);
 if (c == 0) {
     count = 0;





     ctxt->input->cur -= l;
     GROW;
            if (ctxt->instate == XML_PARSER_EOF)
                return(((void*)0));
     ctxt->input->cur += l;
     c = CUR_CHAR(l);
 }
    }
    if ((len > XML_MAX_NAME_LENGTH) &&
        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
        xmlFatalErr(ctxt, XML_ERR_NAME_TOO_LONG, "NCName");
        return(((void*)0));
    }
    return(xmlDictLookup(ctxt->dict, (BASE_PTR + startPosition), len));
}
