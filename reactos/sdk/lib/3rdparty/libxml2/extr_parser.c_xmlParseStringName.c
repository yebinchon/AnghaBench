
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_7__ {int options; } ;


 int COPY_BUF (int,scalar_t__*,int,int) ;
 int CUR_SCHAR (scalar_t__ const*,int) ;
 int XML_ERR_NAME_TOO_LONG ;
 int XML_MAX_NAMELEN ;
 int XML_MAX_NAME_LENGTH ;
 int XML_PARSE_HUGE ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int nbParseStringName ;
 int xmlErrMemory (TYPE_1__*,int *) ;
 int xmlFatalErr (TYPE_1__*,int ,char*) ;
 int xmlFree (scalar_t__*) ;
 scalar_t__ xmlIsNameChar (TYPE_1__*,int) ;
 int xmlIsNameStartChar (TYPE_1__*,int) ;
 scalar_t__ xmlMallocAtomic (int) ;
 scalar_t__ xmlRealloc (scalar_t__*,int) ;
 scalar_t__* xmlStrndup (scalar_t__*,int) ;

__attribute__((used)) static xmlChar *
xmlParseStringName(xmlParserCtxtPtr ctxt, const xmlChar** str) {
    xmlChar buf[XML_MAX_NAMELEN + 5];
    const xmlChar *cur = *str;
    int len = 0, l;
    int c;





    c = CUR_SCHAR(cur, l);
    if (!xmlIsNameStartChar(ctxt, c)) {
 return(((void*)0));
    }

    COPY_BUF(l,buf,len,c);
    cur += l;
    c = CUR_SCHAR(cur, l);
    while (xmlIsNameChar(ctxt, c)) {
 COPY_BUF(l,buf,len,c);
 cur += l;
 c = CUR_SCHAR(cur, l);
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
  if (len + 10 > max) {
      xmlChar *tmp;

                    if ((len > XML_MAX_NAME_LENGTH) &&
                        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
                        xmlFatalErr(ctxt, XML_ERR_NAME_TOO_LONG, "NCName");
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
  cur += l;
  c = CUR_SCHAR(cur, l);
     }
     buffer[len] = 0;
     *str = cur;
     return(buffer);
 }
    }
    if ((len > XML_MAX_NAME_LENGTH) &&
        ((ctxt->options & XML_PARSE_HUGE) == 0)) {
        xmlFatalErr(ctxt, XML_ERR_NAME_TOO_LONG, "NCName");
        return(((void*)0));
    }
    *str = cur;
    return(xmlStrndup(buf, len));
}
