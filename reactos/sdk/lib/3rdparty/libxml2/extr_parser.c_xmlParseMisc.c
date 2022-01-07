
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_5__ {scalar_t__ instate; } ;


 scalar_t__ CMP4 (int ,char,char,char,char) ;
 int CUR ;
 int CUR_PTR ;
 scalar_t__ IS_BLANK_CH (int ) ;
 int NEXT ;
 char NXT (int) ;
 char RAW ;
 scalar_t__ XML_PARSER_EOF ;
 int xmlParseComment (TYPE_1__*) ;
 int xmlParsePI (TYPE_1__*) ;

void
xmlParseMisc(xmlParserCtxtPtr ctxt) {
    while ((ctxt->instate != XML_PARSER_EOF) &&
           (((RAW == '<') && (NXT(1) == '?')) ||
            (CMP4(CUR_PTR, '<', '!', '-', '-')) ||
            IS_BLANK_CH(CUR))) {
        if ((RAW == '<') && (NXT(1) == '?')) {
     xmlParsePI(ctxt);
 } else if (IS_BLANK_CH(CUR)) {
     NEXT;
 } else
     xmlParseComment(ctxt);
    }
}
