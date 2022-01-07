
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;


 int memcpy (scalar_t__*,scalar_t__ const*,int) ;
 int xmlErrMemory (int *,int *) ;
 scalar_t__ xmlRealloc (scalar_t__*,int) ;
 int xmlStrlen (scalar_t__*) ;
 scalar_t__* xmlStrndup (scalar_t__ const*,int) ;

xmlChar *
xmlStrncat(xmlChar *cur, const xmlChar *add, int len) {
    int size;
    xmlChar *ret;

    if ((add == ((void*)0)) || (len == 0))
        return(cur);
    if (len < 0)
 return(((void*)0));
    if (cur == ((void*)0))
        return(xmlStrndup(add, len));

    size = xmlStrlen(cur);
    if (size < 0)
        return(((void*)0));
    ret = (xmlChar *) xmlRealloc(cur, (size + len + 1) * sizeof(xmlChar));
    if (ret == ((void*)0)) {
        xmlErrMemory(((void*)0), ((void*)0));
        return(cur);
    }
    memcpy(&ret[size], add, len * sizeof(xmlChar));
    ret[size + len] = 0;
    return(ret);
}
