
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef char xmlChar ;
struct TYPE_13__ {scalar_t__ instate; TYPE_1__* input; } ;
struct TYPE_12__ {unsigned int consumed; char* cur; } ;


 scalar_t__ CMP9 (char const*,char,char,char,char,char,char,char,char,char) ;
 char const* CUR_PTR ;
 int GROW ;
 char NXT (int) ;
 char RAW ;
 int SHRINK ;
 int XML_ERR_INTERNAL_ERROR ;
 scalar_t__ XML_PARSER_CONTENT ;
 scalar_t__ XML_PARSER_EOF ;
 int xmlFatalErr (TYPE_2__*,int ,char*) ;
 int xmlHaltParser (TYPE_2__*) ;
 int xmlParseCDSect (TYPE_2__*) ;
 int xmlParseCharData (TYPE_2__*,int ) ;
 int xmlParseComment (TYPE_2__*) ;
 int xmlParseElement (TYPE_2__*) ;
 int xmlParsePI (TYPE_2__*) ;
 int xmlParseReference (TYPE_2__*) ;

void
xmlParseContent(xmlParserCtxtPtr ctxt) {
    GROW;
    while ((RAW != 0) &&
    ((RAW != '<') || (NXT(1) != '/')) &&
    (ctxt->instate != XML_PARSER_EOF)) {
 const xmlChar *test = CUR_PTR;
 unsigned int cons = ctxt->input->consumed;
 const xmlChar *cur = ctxt->input->cur;




 if ((*cur == '<') && (cur[1] == '?')) {
     xmlParsePI(ctxt);
 }





 else if (CMP9(CUR_PTR, '<', '!', '[', 'C', 'D', 'A', 'T', 'A', '[')) {
     xmlParseCDSect(ctxt);
 }




 else if ((*cur == '<') && (NXT(1) == '!') &&
   (NXT(2) == '-') && (NXT(3) == '-')) {
     xmlParseComment(ctxt);
     ctxt->instate = XML_PARSER_CONTENT;
 }




 else if (*cur == '<') {
     xmlParseElement(ctxt);
 }






 else if (*cur == '&') {
     xmlParseReference(ctxt);
 }




 else {
     xmlParseCharData(ctxt, 0);
 }

 GROW;
 SHRINK;

 if ((cons == ctxt->input->consumed) && (test == CUR_PTR)) {
     xmlFatalErr(ctxt, XML_ERR_INTERNAL_ERROR,
                 "detected an error in element content\n");
     xmlHaltParser(ctxt);
            break;
 }
    }
}
