
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_8__ {scalar_t__ instate; int options; int userData; TYPE_1__* sax; int disableSAX; } ;
struct TYPE_7__ {int (* characters ) (int ,scalar_t__*,int) ;int (* cdataBlock ) (int ,scalar_t__*,int) ;} ;


 scalar_t__ CMP9 (int ,char,char,char,char,char,char,char,char,char) ;
 int COPY_BUF (int,scalar_t__*,int,int) ;
 int CUR_CHAR (int) ;
 int CUR_PTR ;
 int GROW ;
 scalar_t__ IS_CHAR (int) ;
 int NEXTL (int) ;
 int SKIP (int) ;
 int XML_ERR_CDATA_NOT_FINISHED ;
 int XML_MAX_TEXT_LENGTH ;
 int XML_PARSER_BUFFER_SIZE ;
 scalar_t__ XML_PARSER_CDATA_SECTION ;
 void* XML_PARSER_CONTENT ;
 scalar_t__ XML_PARSER_EOF ;
 int XML_PARSE_HUGE ;
 int stub1 (int ,scalar_t__*,int) ;
 int stub2 (int ,scalar_t__*,int) ;
 int xmlErrMemory (TYPE_2__*,int *) ;
 int xmlFatalErr (TYPE_2__*,int ,int *) ;
 int xmlFatalErrMsgStr (TYPE_2__*,int ,char*,scalar_t__*) ;
 int xmlFree (scalar_t__*) ;
 scalar_t__ xmlMallocAtomic (int) ;
 scalar_t__ xmlRealloc (scalar_t__*,int) ;

void
xmlParseCDSect(xmlParserCtxtPtr ctxt) {
    xmlChar *buf = ((void*)0);
    int len = 0;
    int size = XML_PARSER_BUFFER_SIZE;
    int r, rl;
    int s, sl;
    int cur, l;
    int count = 0;


    if (CMP9(CUR_PTR, '<', '!', '[', 'C', 'D', 'A', 'T', 'A', '[')) {
 SKIP(9);
    } else
        return;

    ctxt->instate = XML_PARSER_CDATA_SECTION;
    r = CUR_CHAR(rl);
    if (!IS_CHAR(r)) {
 xmlFatalErr(ctxt, XML_ERR_CDATA_NOT_FINISHED, ((void*)0));
 ctxt->instate = XML_PARSER_CONTENT;
        return;
    }
    NEXTL(rl);
    s = CUR_CHAR(sl);
    if (!IS_CHAR(s)) {
 xmlFatalErr(ctxt, XML_ERR_CDATA_NOT_FINISHED, ((void*)0));
 ctxt->instate = XML_PARSER_CONTENT;
        return;
    }
    NEXTL(sl);
    cur = CUR_CHAR(l);
    buf = (xmlChar *) xmlMallocAtomic(size * sizeof(xmlChar));
    if (buf == ((void*)0)) {
 xmlErrMemory(ctxt, ((void*)0));
 return;
    }
    while (IS_CHAR(cur) &&
           ((r != ']') || (s != ']') || (cur != '>'))) {
 if (len + 5 >= size) {
     xmlChar *tmp;

            if ((size > XML_MAX_TEXT_LENGTH) &&
                ((ctxt->options & XML_PARSE_HUGE) == 0)) {
                xmlFatalErrMsgStr(ctxt, XML_ERR_CDATA_NOT_FINISHED,
                             "CData section too big found", ((void*)0));
                xmlFree (buf);
                return;
            }
     tmp = (xmlChar *) xmlRealloc(buf, size * 2 * sizeof(xmlChar));
     if (tmp == ((void*)0)) {
         xmlFree(buf);
  xmlErrMemory(ctxt, ((void*)0));
  return;
     }
     buf = tmp;
     size *= 2;
 }
 COPY_BUF(rl,buf,len,r);
 r = s;
 rl = sl;
 s = cur;
 sl = l;
 count++;
 if (count > 50) {
     GROW;
            if (ctxt->instate == XML_PARSER_EOF) {
  xmlFree(buf);
  return;
            }
     count = 0;
 }
 NEXTL(l);
 cur = CUR_CHAR(l);
    }
    buf[len] = 0;
    ctxt->instate = XML_PARSER_CONTENT;
    if (cur != '>') {
 xmlFatalErrMsgStr(ctxt, XML_ERR_CDATA_NOT_FINISHED,
                      "CData section not finished\n%.50s\n", buf);
 xmlFree(buf);
        return;
    }
    NEXTL(l);




    if ((ctxt->sax != ((void*)0)) && (!ctxt->disableSAX)) {
 if (ctxt->sax->cdataBlock != ((void*)0))
     ctxt->sax->cdataBlock(ctxt->userData, buf, len);
 else if (ctxt->sax->characters != ((void*)0))
     ctxt->sax->characters(ctxt->userData, buf, len);
    }
    xmlFree(buf);
}
