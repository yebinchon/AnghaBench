
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef char xmlChar ;
struct TYPE_7__ {char* cur; int col; int line; } ;
struct TYPE_6__ {int inputNr; scalar_t__ instate; scalar_t__ external; TYPE_4__* input; } ;


 char CUR ;
 int INPUT_CHUNK ;
 scalar_t__ IS_BLANK_CH (char const) ;
 int NEXT ;
 char NXT (int) ;
 scalar_t__ XML_PARSER_DTD ;
 int xmlParsePEReference (TYPE_1__*) ;
 int xmlParserInputGrow (TYPE_4__*,int ) ;
 int xmlPopInput (TYPE_1__*) ;

int
xmlSkipBlankChars(xmlParserCtxtPtr ctxt) {
    int res = 0;





    if ((ctxt->inputNr == 1) && (ctxt->instate != XML_PARSER_DTD)) {
 const xmlChar *cur;



 cur = ctxt->input->cur;
 while (IS_BLANK_CH(*cur)) {
     if (*cur == '\n') {
  ctxt->input->line++; ctxt->input->col = 1;
     } else {
  ctxt->input->col++;
     }
     cur++;
     res++;
     if (*cur == 0) {
  ctxt->input->cur = cur;
  xmlParserInputGrow(ctxt->input, INPUT_CHUNK);
  cur = ctxt->input->cur;
     }
 }
 ctxt->input->cur = cur;
    } else {
        int expandPE = ((ctxt->external != 0) || (ctxt->inputNr != 1));

 while (1) {
            if (IS_BLANK_CH(CUR)) {
  NEXT;
     } else if (CUR == '%') {



         if ((expandPE == 0) || (IS_BLANK_CH(NXT(1))) || (NXT(1) == 0))
                    break;
         xmlParsePEReference(ctxt);
            } else if (CUR == 0) {
                if (ctxt->inputNr <= 1)
                    break;
                xmlPopInput(ctxt);
            } else {
                break;
            }
     res++;
        }
    }
    return(res);
}
