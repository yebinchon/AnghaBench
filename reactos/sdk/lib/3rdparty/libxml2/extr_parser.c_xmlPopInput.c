
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_7__ {scalar_t__* cur; } ;
struct TYPE_6__ {int inputNr; scalar_t__ inSubset; scalar_t__ instate; TYPE_3__* input; } ;


 int CUR ;
 int INPUT_CHUNK ;
 int XML_ERR_INTERNAL_ERROR ;
 scalar_t__ XML_PARSER_EOF ;
 int inputPop (TYPE_1__*) ;
 int xmlFatalErr (TYPE_1__*,int ,char*) ;
 int xmlFreeInputStream (int ) ;
 int xmlGenericError (int ,char*,int) ;
 int xmlGenericErrorContext ;
 scalar_t__ xmlParserDebugEntities ;
 int xmlParserInputGrow (TYPE_3__*,int ) ;

xmlChar
xmlPopInput(xmlParserCtxtPtr ctxt) {
    if ((ctxt == ((void*)0)) || (ctxt->inputNr <= 1)) return(0);
    if (xmlParserDebugEntities)
 xmlGenericError(xmlGenericErrorContext,
  "Popping input %d\n", ctxt->inputNr);
    if ((ctxt->inputNr > 1) && (ctxt->inSubset == 0) &&
        (ctxt->instate != XML_PARSER_EOF))
        xmlFatalErr(ctxt, XML_ERR_INTERNAL_ERROR,
                    "Unfinished entity outside the DTD");
    xmlFreeInputStream(inputPop(ctxt));
    if (*ctxt->input->cur == 0)
        xmlParserInputGrow(ctxt->input, INPUT_CHUNK);
    return(CUR);
}
