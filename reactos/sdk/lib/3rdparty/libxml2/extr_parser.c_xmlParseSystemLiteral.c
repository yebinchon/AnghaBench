
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* xmlParserInputState ;
typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_5__ {int instate; int options; } ;


 int COPY_BUF (int,int*,int,int) ;
 int CUR_CHAR (int) ;
 int GROW ;
 scalar_t__ IS_CHAR (int) ;
 int NEXT ;
 int NEXTL (int) ;
 char RAW ;
 int SHRINK ;
 int XML_ERR_LITERAL_NOT_FINISHED ;
 int XML_ERR_LITERAL_NOT_STARTED ;
 int XML_ERR_NAME_TOO_LONG ;
 int XML_MAX_NAME_LENGTH ;
 int XML_PARSER_BUFFER_SIZE ;
 int XML_PARSER_EOF ;
 int XML_PARSER_SYSTEM_LITERAL ;
 int XML_PARSE_HUGE ;
 int xmlErrMemory (TYPE_1__*,int *) ;
 int xmlFatalErr (TYPE_1__*,int ,char*) ;
 int xmlFree (int*) ;
 scalar_t__ xmlMallocAtomic (int) ;
 scalar_t__ xmlRealloc (int*,int) ;

xmlChar *
xmlParseSystemLiteral(xmlParserCtxtPtr ctxt) {
    xmlChar *buf = ((void*)0);
    int len = 0;
    int size = XML_PARSER_BUFFER_SIZE;
    int cur, l;
    xmlChar stop;
    int state = ctxt->instate;
    int count = 0;

    SHRINK;
    if (RAW == '"') {
        NEXT;
 stop = '"';
    } else if (RAW == '\'') {
        NEXT;
 stop = '\'';
    } else {
 xmlFatalErr(ctxt, XML_ERR_LITERAL_NOT_STARTED, ((void*)0));
 return(((void*)0));
    }

    buf = (xmlChar *) xmlMallocAtomic(size * sizeof(xmlChar));
    if (buf == ((void*)0)) {
        xmlErrMemory(ctxt, ((void*)0));
 return(((void*)0));
    }
    ctxt->instate = XML_PARSER_SYSTEM_LITERAL;
    cur = CUR_CHAR(l);
    while ((IS_CHAR(cur)) && (cur != stop)) {
 if (len + 5 >= size) {
     xmlChar *tmp;

            if ((size > XML_MAX_NAME_LENGTH) &&
                ((ctxt->options & XML_PARSE_HUGE) == 0)) {
                xmlFatalErr(ctxt, XML_ERR_NAME_TOO_LONG, "SystemLiteral");
                xmlFree(buf);
  ctxt->instate = (xmlParserInputState) state;
                return(((void*)0));
            }
     size *= 2;
     tmp = (xmlChar *) xmlRealloc(buf, size * sizeof(xmlChar));
     if (tmp == ((void*)0)) {
         xmlFree(buf);
  xmlErrMemory(ctxt, ((void*)0));
  ctxt->instate = (xmlParserInputState) state;
  return(((void*)0));
     }
     buf = tmp;
 }
 count++;
 if (count > 50) {
     GROW;
     count = 0;
            if (ctxt->instate == XML_PARSER_EOF) {
         xmlFree(buf);
  return(((void*)0));
            }
 }
 COPY_BUF(l,buf,len,cur);
 NEXTL(l);
 cur = CUR_CHAR(l);
 if (cur == 0) {
     GROW;
     SHRINK;
     cur = CUR_CHAR(l);
 }
    }
    buf[len] = 0;
    ctxt->instate = (xmlParserInputState) state;
    if (!IS_CHAR(cur)) {
 xmlFatalErr(ctxt, XML_ERR_LITERAL_NOT_FINISHED, ((void*)0));
    } else {
 NEXT;
    }
    return(buf);
}
