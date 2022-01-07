
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlParserCtxtPtr ;
typedef char xmlChar ;


 char CUR ;
 int NEXT ;
 int xmlErrMemory (int ,int *) ;
 int xmlFree (char*) ;
 scalar_t__ xmlMallocAtomic (int) ;
 scalar_t__ xmlRealloc (char*,int) ;

xmlChar *
xmlParseVersionNum(xmlParserCtxtPtr ctxt) {
    xmlChar *buf = ((void*)0);
    int len = 0;
    int size = 10;
    xmlChar cur;

    buf = (xmlChar *) xmlMallocAtomic(size * sizeof(xmlChar));
    if (buf == ((void*)0)) {
 xmlErrMemory(ctxt, ((void*)0));
 return(((void*)0));
    }
    cur = CUR;
    if (!((cur >= '0') && (cur <= '9'))) {
 xmlFree(buf);
 return(((void*)0));
    }
    buf[len++] = cur;
    NEXT;
    cur=CUR;
    if (cur != '.') {
 xmlFree(buf);
 return(((void*)0));
    }
    buf[len++] = cur;
    NEXT;
    cur=CUR;
    while ((cur >= '0') && (cur <= '9')) {
 if (len + 1 >= size) {
     xmlChar *tmp;

     size *= 2;
     tmp = (xmlChar *) xmlRealloc(buf, size * sizeof(xmlChar));
     if (tmp == ((void*)0)) {
         xmlFree(buf);
  xmlErrMemory(ctxt, ((void*)0));
  return(((void*)0));
     }
     buf = tmp;
 }
 buf[len++] = cur;
 NEXT;
 cur=CUR;
    }
    buf[len] = 0;
    return(buf);
}
