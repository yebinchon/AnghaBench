
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_8__ {int* space; scalar_t__ instate; TYPE_1__* sax; int userData; int disableSAX; } ;
struct TYPE_7__ {int (* ignorableWhitespace ) (int ,scalar_t__*,int) ;int (* characters ) (int ,scalar_t__*,int) ;} ;


 int COPY_BUF (int,scalar_t__*,int,int) ;
 int CUR_CHAR (int) ;
 int GROW ;
 scalar_t__ IS_CHAR (int) ;
 int NEXTL (int) ;
 char NXT (int) ;
 int SHRINK ;
 int XML_ERR_INVALID_CHAR ;
 int XML_ERR_MISPLACED_CDATA_END ;
 int XML_PARSER_BIG_BUFFER_SIZE ;
 scalar_t__ XML_PARSER_CONTENT ;
 scalar_t__ XML_PARSER_EOF ;
 scalar_t__ areBlanks (TYPE_2__*,scalar_t__*,int,int ) ;
 int stub1 (int ,scalar_t__*,int) ;
 int stub2 (int ,scalar_t__*,int) ;
 int stub3 (int ,scalar_t__*,int) ;
 int stub4 (int ,scalar_t__*,int) ;
 int xmlFatalErr (TYPE_2__*,int ,int *) ;
 int xmlFatalErrMsgInt (TYPE_2__*,int ,char*,int) ;

__attribute__((used)) static void
xmlParseCharDataComplex(xmlParserCtxtPtr ctxt, int cdata) {
    xmlChar buf[XML_PARSER_BIG_BUFFER_SIZE + 5];
    int nbchar = 0;
    int cur, l;
    int count = 0;

    SHRINK;
    GROW;
    cur = CUR_CHAR(l);
    while ((cur != '<') &&
           (cur != '&') &&
    (IS_CHAR(cur))) {
 if ((cur == ']') && (NXT(1) == ']') &&
     (NXT(2) == '>')) {
     if (cdata) break;
     else {
  xmlFatalErr(ctxt, XML_ERR_MISPLACED_CDATA_END, ((void*)0));
     }
 }
 COPY_BUF(l,buf,nbchar,cur);
 if (nbchar >= XML_PARSER_BIG_BUFFER_SIZE) {
     buf[nbchar] = 0;




     if ((ctxt->sax != ((void*)0)) && (!ctxt->disableSAX)) {
  if (areBlanks(ctxt, buf, nbchar, 0)) {
      if (ctxt->sax->ignorableWhitespace != ((void*)0))
   ctxt->sax->ignorableWhitespace(ctxt->userData,
                                  buf, nbchar);
  } else {
      if (ctxt->sax->characters != ((void*)0))
   ctxt->sax->characters(ctxt->userData, buf, nbchar);
      if ((ctxt->sax->characters !=
           ctxt->sax->ignorableWhitespace) &&
   (*ctxt->space == -1))
   *ctxt->space = -2;
  }
     }
     nbchar = 0;

            if (ctxt->instate != XML_PARSER_CONTENT)
                return;
 }
 count++;
 if (count > 50) {
     GROW;
     count = 0;
            if (ctxt->instate == XML_PARSER_EOF)
  return;
 }
 NEXTL(l);
 cur = CUR_CHAR(l);
    }
    if (nbchar != 0) {
        buf[nbchar] = 0;



 if ((ctxt->sax != ((void*)0)) && (!ctxt->disableSAX)) {
     if (areBlanks(ctxt, buf, nbchar, 0)) {
  if (ctxt->sax->ignorableWhitespace != ((void*)0))
      ctxt->sax->ignorableWhitespace(ctxt->userData, buf, nbchar);
     } else {
  if (ctxt->sax->characters != ((void*)0))
      ctxt->sax->characters(ctxt->userData, buf, nbchar);
  if ((ctxt->sax->characters != ctxt->sax->ignorableWhitespace) &&
      (*ctxt->space == -1))
      *ctxt->space = -2;
     }
 }
    }
    if ((cur != 0) && (!IS_CHAR(cur))) {

        xmlFatalErrMsgInt(ctxt, XML_ERR_INVALID_CHAR,
                          "PCDATA invalid Char value %d\n",
                   cur);
 NEXTL(l);
    }
}
