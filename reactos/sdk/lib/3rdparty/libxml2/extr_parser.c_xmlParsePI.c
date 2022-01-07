
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ xmlParserInputState ;
typedef TYPE_3__* xmlParserCtxtPtr ;
typedef scalar_t__ xmlChar ;
typedef scalar_t__ xmlCatalogAllow ;
struct TYPE_13__ {scalar_t__ instate; int options; int userData; TYPE_2__* sax; int disableSAX; TYPE_1__* input; } ;
struct TYPE_12__ {int (* processingInstruction ) (int ,scalar_t__ const*,scalar_t__*) ;} ;
struct TYPE_11__ {int id; } ;


 int COPY_BUF (int,scalar_t__*,size_t,int) ;
 int CUR_CHAR (int) ;
 int GROW ;
 scalar_t__ IS_CHAR (int) ;
 int NEXTL (int) ;
 char NXT (int) ;
 char RAW ;
 int SHRINK ;
 int SKIP (int) ;
 scalar_t__ SKIP_BLANKS ;
 int XML_CATALOG_PI ;
 scalar_t__ XML_CATA_ALLOW_ALL ;
 scalar_t__ XML_CATA_ALLOW_DOCUMENT ;
 int XML_ERR_ENTITY_BOUNDARY ;
 int XML_ERR_PI_NOT_FINISHED ;
 int XML_ERR_PI_NOT_STARTED ;
 int XML_ERR_SPACE_REQUIRED ;
 size_t XML_MAX_TEXT_LENGTH ;
 size_t XML_PARSER_BUFFER_SIZE ;
 scalar_t__ XML_PARSER_EOF ;
 scalar_t__ XML_PARSER_MISC ;
 scalar_t__ XML_PARSER_PI ;
 scalar_t__ XML_PARSER_START ;
 int XML_PARSE_HUGE ;
 int stub1 (int ,scalar_t__ const*,scalar_t__*) ;
 int stub2 (int ,scalar_t__ const*,scalar_t__*) ;
 scalar_t__ xmlCatalogGetDefaults () ;
 int xmlErrMemory (TYPE_3__*,int *) ;
 int xmlFatalErr (TYPE_3__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_3__*,int ,char*) ;
 int xmlFatalErrMsgStr (TYPE_3__*,int ,char*,scalar_t__ const*) ;
 int xmlFree (scalar_t__*) ;
 scalar_t__ xmlMallocAtomic (size_t) ;
 int xmlParseCatalogPI (TYPE_3__*,scalar_t__*) ;
 scalar_t__* xmlParsePITarget (TYPE_3__*) ;
 scalar_t__ xmlRealloc (scalar_t__*,size_t) ;
 scalar_t__ xmlStrEqual (scalar_t__ const*,int ) ;

void
xmlParsePI(xmlParserCtxtPtr ctxt) {
    xmlChar *buf = ((void*)0);
    size_t len = 0;
    size_t size = XML_PARSER_BUFFER_SIZE;
    int cur, l;
    const xmlChar *target;
    xmlParserInputState state;
    int count = 0;

    if ((RAW == '<') && (NXT(1) == '?')) {
 int inputid = ctxt->input->id;
 state = ctxt->instate;
        ctxt->instate = XML_PARSER_PI;



 SKIP(2);
 SHRINK;





        target = xmlParsePITarget(ctxt);
 if (target != ((void*)0)) {
     if ((RAW == '?') && (NXT(1) == '>')) {
  if (inputid != ctxt->input->id) {
      xmlFatalErrMsg(ctxt, XML_ERR_ENTITY_BOUNDARY,
                            "PI declaration doesn't start and stop in"
                                   " the same entity\n");
  }
  SKIP(2);




  if ((ctxt->sax) && (!ctxt->disableSAX) &&
      (ctxt->sax->processingInstruction != ((void*)0)))
      ctxt->sax->processingInstruction(ctxt->userData,
                                       target, ((void*)0));
  if (ctxt->instate != XML_PARSER_EOF)
      ctxt->instate = state;
  return;
     }
     buf = (xmlChar *) xmlMallocAtomic(size * sizeof(xmlChar));
     if (buf == ((void*)0)) {
  xmlErrMemory(ctxt, ((void*)0));
  ctxt->instate = state;
  return;
     }
     if (SKIP_BLANKS == 0) {
  xmlFatalErrMsgStr(ctxt, XML_ERR_SPACE_REQUIRED,
     "ParsePI: PI %s space expected\n", target);
     }
     cur = CUR_CHAR(l);
     while (IS_CHAR(cur) &&
     ((cur != '?') || (NXT(1) != '>'))) {
  if (len + 5 >= size) {
      xmlChar *tmp;
                    size_t new_size = size * 2;
      tmp = (xmlChar *) xmlRealloc(buf, new_size);
      if (tmp == ((void*)0)) {
   xmlErrMemory(ctxt, ((void*)0));
   xmlFree(buf);
   ctxt->instate = state;
   return;
      }
      buf = tmp;
                    size = new_size;
  }
  count++;
  if (count > 50) {
      GROW;
                    if (ctxt->instate == XML_PARSER_EOF) {
                        xmlFree(buf);
                        return;
                    }
      count = 0;
                    if ((len > XML_MAX_TEXT_LENGTH) &&
                        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
                        xmlFatalErrMsgStr(ctxt, XML_ERR_PI_NOT_FINISHED,
                                          "PI %s too big found", target);
                        xmlFree(buf);
                        ctxt->instate = state;
                        return;
                    }
  }
  COPY_BUF(l,buf,len,cur);
  NEXTL(l);
  cur = CUR_CHAR(l);
  if (cur == 0) {
      SHRINK;
      GROW;
      cur = CUR_CHAR(l);
  }
     }
            if ((len > XML_MAX_TEXT_LENGTH) &&
                ((ctxt->options & XML_PARSE_HUGE) == 0)) {
                xmlFatalErrMsgStr(ctxt, XML_ERR_PI_NOT_FINISHED,
                                  "PI %s too big found", target);
                xmlFree(buf);
                ctxt->instate = state;
                return;
            }
     buf[len] = 0;
     if (cur != '?') {
  xmlFatalErrMsgStr(ctxt, XML_ERR_PI_NOT_FINISHED,
        "ParsePI: PI %s never end ...\n", target);
     } else {
  if (inputid != ctxt->input->id) {
      xmlFatalErrMsg(ctxt, XML_ERR_ENTITY_BOUNDARY,
                            "PI declaration doesn't start and stop in"
                                   " the same entity\n");
  }
  SKIP(2);
  if ((ctxt->sax) && (!ctxt->disableSAX) &&
      (ctxt->sax->processingInstruction != ((void*)0)))
      ctxt->sax->processingInstruction(ctxt->userData,
                                       target, buf);
     }
     xmlFree(buf);
 } else {
     xmlFatalErr(ctxt, XML_ERR_PI_NOT_STARTED, ((void*)0));
 }
 if (ctxt->instate != XML_PARSER_EOF)
     ctxt->instate = state;
    }
}
