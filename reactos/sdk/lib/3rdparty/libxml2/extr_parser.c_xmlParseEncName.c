
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;
typedef char xmlChar ;


 char CUR ;
 int GROW ;
 int NEXT ;
 int SHRINK ;
 int XML_ERR_ENCODING_NAME ;
 int xmlErrMemory (int ,int *) ;
 int xmlFatalErr (int ,int ,int *) ;
 int xmlFree (char*) ;
 scalar_t__ xmlMallocAtomic (int) ;
 scalar_t__ xmlRealloc (char*,int) ;

xmlChar *
xmlParseEncName(xmlParserCtxtPtr ctxt) {
    xmlChar *buf = ((void*)0);
    int len = 0;
    int size = 10;
    xmlChar cur;

    cur = CUR;
    if (((cur >= 'a') && (cur <= 'z')) ||
        ((cur >= 'A') && (cur <= 'Z'))) {
 buf = (xmlChar *) xmlMallocAtomic(size * sizeof(xmlChar));
 if (buf == ((void*)0)) {
     xmlErrMemory(ctxt, ((void*)0));
     return(((void*)0));
 }

 buf[len++] = cur;
 NEXT;
 cur = CUR;
 while (((cur >= 'a') && (cur <= 'z')) ||
        ((cur >= 'A') && (cur <= 'Z')) ||
        ((cur >= '0') && (cur <= '9')) ||
        (cur == '.') || (cur == '_') ||
        (cur == '-')) {
     if (len + 1 >= size) {
         xmlChar *tmp;

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
     NEXT;
     cur = CUR;
     if (cur == 0) {
         SHRINK;
  GROW;
  cur = CUR;
     }
        }
 buf[len] = 0;
    } else {
 xmlFatalErr(ctxt, XML_ERR_ENCODING_NAME, ((void*)0));
    }
    return(buf);
}
