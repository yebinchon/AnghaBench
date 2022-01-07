
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xmlParserInputState ;
typedef TYPE_1__* xmlParserCtxtPtr ;
typedef char xmlChar ;
struct TYPE_5__ {int options; int instate; } ;


 char CUR ;
 int GROW ;
 scalar_t__ IS_PUBIDCHAR_CH (char) ;
 int NEXT ;
 char RAW ;
 int SHRINK ;
 int XML_ERR_LITERAL_NOT_FINISHED ;
 int XML_ERR_LITERAL_NOT_STARTED ;
 int XML_ERR_NAME_TOO_LONG ;
 int XML_MAX_NAME_LENGTH ;
 int XML_PARSER_BUFFER_SIZE ;
 int XML_PARSER_EOF ;
 int XML_PARSER_PUBLIC_LITERAL ;
 int XML_PARSE_HUGE ;
 int xmlErrMemory (TYPE_1__*,int *) ;
 int xmlFatalErr (TYPE_1__*,int ,char*) ;
 int xmlFree (char*) ;
 scalar_t__ xmlMallocAtomic (int) ;
 scalar_t__ xmlRealloc (char*,int) ;

xmlChar *
xmlParsePubidLiteral(xmlParserCtxtPtr ctxt) {
    xmlChar *buf = ((void*)0);
    int len = 0;
    int size = XML_PARSER_BUFFER_SIZE;
    xmlChar cur;
    xmlChar stop;
    int count = 0;
    xmlParserInputState oldstate = ctxt->instate;

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
    ctxt->instate = XML_PARSER_PUBLIC_LITERAL;
    cur = CUR;
    while ((IS_PUBIDCHAR_CH(cur)) && (cur != stop)) {
 if (len + 1 >= size) {
     xmlChar *tmp;

            if ((size > XML_MAX_NAME_LENGTH) &&
                ((ctxt->options & XML_PARSE_HUGE) == 0)) {
                xmlFatalErr(ctxt, XML_ERR_NAME_TOO_LONG, "Public ID");
                xmlFree(buf);
                return(((void*)0));
            }
     size *= 2;
     tmp = (xmlChar *) xmlRealloc(buf, size * sizeof(xmlChar));
     if (tmp == ((void*)0)) {
  xmlErrMemory(ctxt, ((void*)0));
  xmlFree(buf);
  return(((void*)0));
     }
     buf = tmp;
 }
 buf[len++] = cur;
 count++;
 if (count > 50) {
     GROW;
     count = 0;
            if (ctxt->instate == XML_PARSER_EOF) {
  xmlFree(buf);
  return(((void*)0));
            }
 }
 NEXT;
 cur = CUR;
 if (cur == 0) {
     GROW;
     SHRINK;
     cur = CUR;
 }
    }
    buf[len] = 0;
    if (cur != stop) {
 xmlFatalErr(ctxt, XML_ERR_LITERAL_NOT_FINISHED, ((void*)0));
    } else {
 NEXT;
    }
    ctxt->instate = oldstate;
    return(buf);
}
