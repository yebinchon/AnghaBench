
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_9__ {int inputNr; scalar_t__ instate; TYPE_1__* input; } ;
struct TYPE_8__ {unsigned int consumed; } ;


 int const* CUR_PTR ;
 int NEXT ;
 char RAW ;
 int SKIP_BLANKS ;
 int XML_ERR_DOCTYPE_NOT_FINISHED ;
 int XML_ERR_INTERNAL_ERROR ;
 scalar_t__ XML_PARSER_DTD ;
 scalar_t__ XML_PARSER_EOF ;
 int xmlFatalErr (TYPE_2__*,int ,char*) ;
 int xmlParseMarkupDecl (TYPE_2__*) ;
 int xmlParsePEReference (TYPE_2__*) ;
 int xmlPopInput (TYPE_2__*) ;

__attribute__((used)) static void
xmlParseInternalSubset(xmlParserCtxtPtr ctxt) {



    if (RAW == '[') {
        int baseInputNr = ctxt->inputNr;
        ctxt->instate = XML_PARSER_DTD;
        NEXT;





 while (((RAW != ']') || (ctxt->inputNr > baseInputNr)) &&
               (ctxt->instate != XML_PARSER_EOF)) {
     const xmlChar *check = CUR_PTR;
     unsigned int cons = ctxt->input->consumed;

     SKIP_BLANKS;
     xmlParseMarkupDecl(ctxt);
     xmlParsePEReference(ctxt);

     if ((CUR_PTR == check) && (cons == ctxt->input->consumed)) {
  xmlFatalErr(ctxt, XML_ERR_INTERNAL_ERROR,
      "xmlParseInternalSubset: error detected in Markup declaration\n");
                if (ctxt->inputNr > baseInputNr)
                    xmlPopInput(ctxt);
                else
      break;
     }
 }
 if (RAW == ']') {
     NEXT;
     SKIP_BLANKS;
 }
    }




    if (RAW != '>') {
 xmlFatalErr(ctxt, XML_ERR_DOCTYPE_NOT_FINISHED, ((void*)0));
 return;
    }
    NEXT;
}
