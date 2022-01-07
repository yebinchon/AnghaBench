
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_6__ {scalar_t__ instate; int options; } ;


 int COPY_BUF (int,scalar_t__*,int,int) ;
 int CUR_CHAR (int) ;
 int GROW ;
 int NEXTL (int) ;
 int XML_ERR_NAME_TOO_LONG ;
 int XML_MAX_NAMELEN ;
 int XML_MAX_NAME_LENGTH ;
 int XML_PARSER_CHUNK_SIZE ;
 scalar_t__ XML_PARSER_EOF ;
 int XML_PARSE_HUGE ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int nbParseNmToken ;
 int xmlErrMemory (TYPE_1__*,int *) ;
 int xmlFatalErr (TYPE_1__*,int ,char*) ;
 int xmlFree (scalar_t__*) ;
 scalar_t__ xmlIsNameChar (TYPE_1__*,int) ;
 scalar_t__ xmlMallocAtomic (int) ;
 scalar_t__ xmlRealloc (scalar_t__*,int) ;
 scalar_t__* xmlStrndup (scalar_t__*,int) ;

xmlChar *
xmlParseNmtoken(xmlParserCtxtPtr ctxt) {
    xmlChar buf[XML_MAX_NAMELEN + 5];
    int len = 0, l;
    int c;
    int count = 0;





    GROW;
    if (ctxt->instate == XML_PARSER_EOF)
        return(((void*)0));
    c = CUR_CHAR(l);

    while (xmlIsNameChar(ctxt, c)) {
 if (count++ > XML_PARSER_CHUNK_SIZE) {
     count = 0;
     GROW;
 }
 COPY_BUF(l,buf,len,c);
 NEXTL(l);
 c = CUR_CHAR(l);
 if (c == 0) {
     count = 0;
     GROW;
     if (ctxt->instate == XML_PARSER_EOF)
  return(((void*)0));
            c = CUR_CHAR(l);
 }
 if (len >= XML_MAX_NAMELEN) {




     xmlChar *buffer;
     int max = len * 2;

     buffer = (xmlChar *) xmlMallocAtomic(max * sizeof(xmlChar));
     if (buffer == ((void*)0)) {
         xmlErrMemory(ctxt, ((void*)0));
  return(((void*)0));
     }
     memcpy(buffer, buf, len);
     while (xmlIsNameChar(ctxt, c)) {
  if (count++ > XML_PARSER_CHUNK_SIZE) {
      count = 0;
      GROW;
                    if (ctxt->instate == XML_PARSER_EOF) {
                        xmlFree(buffer);
                        return(((void*)0));
                    }
  }
  if (len + 10 > max) {
      xmlChar *tmp;

                    if ((max > XML_MAX_NAME_LENGTH) &&
                        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
                        xmlFatalErr(ctxt, XML_ERR_NAME_TOO_LONG, "NmToken");
                        xmlFree(buffer);
                        return(((void*)0));
                    }
      max *= 2;
      tmp = (xmlChar *) xmlRealloc(buffer,
                               max * sizeof(xmlChar));
      if (tmp == ((void*)0)) {
   xmlErrMemory(ctxt, ((void*)0));
   xmlFree(buffer);
   return(((void*)0));
      }
      buffer = tmp;
  }
  COPY_BUF(l,buffer,len,c);
  NEXTL(l);
  c = CUR_CHAR(l);
     }
     buffer[len] = 0;
     return(buffer);
 }
    }
    if (len == 0)
        return(((void*)0));
    if ((len > XML_MAX_NAME_LENGTH) &&
        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
        xmlFatalErr(ctxt, XML_ERR_NAME_TOO_LONG, "NmToken");
        return(((void*)0));
    }
    return(xmlStrndup(buf, len));
}
