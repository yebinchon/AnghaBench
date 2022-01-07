
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_10__ {scalar_t__ instate; scalar_t__ external; int inputNr; } ;


 char CUR ;
 int GROW ;
 char NXT (int) ;
 char RAW ;
 scalar_t__ XML_PARSER_DTD ;
 scalar_t__ XML_PARSER_EOF ;
 int xmlParseAttributeListDecl (TYPE_1__*) ;
 int xmlParseComment (TYPE_1__*) ;
 int xmlParseConditionalSections (TYPE_1__*) ;
 int xmlParseElementDecl (TYPE_1__*) ;
 int xmlParseEntityDecl (TYPE_1__*) ;
 int xmlParseNotationDecl (TYPE_1__*) ;
 int xmlParsePI (TYPE_1__*) ;

void
xmlParseMarkupDecl(xmlParserCtxtPtr ctxt) {
    GROW;
    if (CUR == '<') {
        if (NXT(1) == '!') {
     switch (NXT(2)) {
         case 'E':
      if (NXT(3) == 'L')
   xmlParseElementDecl(ctxt);
      else if (NXT(3) == 'N')
   xmlParseEntityDecl(ctxt);
      break;
         case 'A':
      xmlParseAttributeListDecl(ctxt);
      break;
         case 'N':
      xmlParseNotationDecl(ctxt);
      break;
         case '-':
      xmlParseComment(ctxt);
      break;
  default:

      break;
     }
 } else if (NXT(1) == '?') {
     xmlParsePI(ctxt);
 }
    }





    if (ctxt->instate == XML_PARSER_EOF)
        return;





    if ((ctxt->external == 0) && (ctxt->inputNr > 1)) {
        if ((RAW == '<') && (NXT(1) == '!') && (NXT(2) == '[')) {
     xmlParseConditionalSections(ctxt);
 }
    }

    ctxt->instate = XML_PARSER_DTD;
}
