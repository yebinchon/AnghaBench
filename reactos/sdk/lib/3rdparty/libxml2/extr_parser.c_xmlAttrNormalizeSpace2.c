
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserCtxtPtr ;
typedef int xmlChar ;


 int memmove (int*,int*,int) ;
 scalar_t__ strlen (char const*) ;
 int xmlAttrNormalizeSpace (int*,int*) ;
 int xmlErrMemory (int *,int *) ;
 int* xmlStrndup (int*,int) ;

__attribute__((used)) static const xmlChar *
xmlAttrNormalizeSpace2(xmlParserCtxtPtr ctxt, xmlChar *src, int *len)
{
    int i;
    int remove_head = 0;
    int need_realloc = 0;
    const xmlChar *cur;

    if ((ctxt == ((void*)0)) || (src == ((void*)0)) || (len == ((void*)0)))
        return(((void*)0));
    i = *len;
    if (i <= 0)
        return(((void*)0));

    cur = src;
    while (*cur == 0x20) {
        cur++;
 remove_head++;
    }
    while (*cur != 0) {
 if (*cur == 0x20) {
     cur++;
     if ((*cur == 0x20) || (*cur == 0)) {
         need_realloc = 1;
  break;
     }
 } else
     cur++;
    }
    if (need_realloc) {
        xmlChar *ret;

 ret = xmlStrndup(src + remove_head, i - remove_head + 1);
 if (ret == ((void*)0)) {
     xmlErrMemory(ctxt, ((void*)0));
     return(((void*)0));
 }
 xmlAttrNormalizeSpace(ret, ret);
 *len = (int) strlen((const char *)ret);
        return(ret);
    } else if (remove_head) {
        *len -= remove_head;
        memmove(src, src + remove_head, 1 + *len);
 return(src);
    }
    return(((void*)0));
}
