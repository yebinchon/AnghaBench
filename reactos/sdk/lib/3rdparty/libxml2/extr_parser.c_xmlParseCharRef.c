
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
struct TYPE_7__ {scalar_t__ instate; TYPE_1__* input; int nbChars; } ;
struct TYPE_6__ {int cur; int col; } ;


 unsigned int CUR ;
 int GROW ;
 scalar_t__ IS_CHAR (unsigned int) ;
 int NEXT ;
 char NXT (int) ;
 char RAW ;
 int SKIP (int) ;
 int XML_ERR_INVALID_CHAR ;
 int XML_ERR_INVALID_CHARREF ;
 int XML_ERR_INVALID_DEC_CHARREF ;
 int XML_ERR_INVALID_HEX_CHARREF ;
 scalar_t__ XML_PARSER_EOF ;
 int xmlFatalErr (TYPE_2__*,int ,int *) ;
 int xmlFatalErrMsgInt (TYPE_2__*,int ,char*,unsigned int) ;

int
xmlParseCharRef(xmlParserCtxtPtr ctxt) {
    unsigned int val = 0;
    int count = 0;
    unsigned int outofrange = 0;




    if ((RAW == '&') && (NXT(1) == '#') &&
        (NXT(2) == 'x')) {
 SKIP(3);
 GROW;
 while (RAW != ';') {
     if (count++ > 20) {
  count = 0;
  GROW;
                if (ctxt->instate == XML_PARSER_EOF)
                    return(0);
     }
     if ((RAW >= '0') && (RAW <= '9'))
         val = val * 16 + (CUR - '0');
     else if ((RAW >= 'a') && (RAW <= 'f') && (count < 20))
         val = val * 16 + (CUR - 'a') + 10;
     else if ((RAW >= 'A') && (RAW <= 'F') && (count < 20))
         val = val * 16 + (CUR - 'A') + 10;
     else {
  xmlFatalErr(ctxt, XML_ERR_INVALID_HEX_CHARREF, ((void*)0));
  val = 0;
  break;
     }
     if (val > 0x10FFFF)
         outofrange = val;

     NEXT;
     count++;
 }
 if (RAW == ';') {

     ctxt->input->col++;
     ctxt->nbChars ++;
     ctxt->input->cur++;
 }
    } else if ((RAW == '&') && (NXT(1) == '#')) {
 SKIP(2);
 GROW;
 while (RAW != ';') {
     if (count++ > 20) {
  count = 0;
  GROW;
                if (ctxt->instate == XML_PARSER_EOF)
                    return(0);
     }
     if ((RAW >= '0') && (RAW <= '9'))
         val = val * 10 + (CUR - '0');
     else {
  xmlFatalErr(ctxt, XML_ERR_INVALID_DEC_CHARREF, ((void*)0));
  val = 0;
  break;
     }
     if (val > 0x10FFFF)
         outofrange = val;

     NEXT;
     count++;
 }
 if (RAW == ';') {

     ctxt->input->col++;
     ctxt->nbChars ++;
     ctxt->input->cur++;
 }
    } else {
        xmlFatalErr(ctxt, XML_ERR_INVALID_CHARREF, ((void*)0));
    }






    if ((IS_CHAR(val) && (outofrange == 0))) {
        return(val);
    } else {
        xmlFatalErrMsgInt(ctxt, XML_ERR_INVALID_CHAR,
                          "xmlParseCharRef: invalid xmlChar value %d\n",
                   val);
    }
    return(0);
}
