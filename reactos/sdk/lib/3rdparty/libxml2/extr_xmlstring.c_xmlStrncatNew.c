
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;


 int memcpy (scalar_t__*,scalar_t__ const*,int) ;
 int xmlErrMemory (int *,int *) ;
 scalar_t__ xmlMalloc (int) ;
 scalar_t__* xmlStrdup (scalar_t__ const*) ;
 int xmlStrlen (scalar_t__ const*) ;
 scalar_t__* xmlStrndup (scalar_t__ const*,int) ;

xmlChar *
xmlStrncatNew(const xmlChar *str1, const xmlChar *str2, int len) {
    int size;
    xmlChar *ret;

    if (len < 0) {
        len = xmlStrlen(str2);
        if (len < 0)
            return(((void*)0));
    }
    if ((str2 == ((void*)0)) || (len == 0))
        return(xmlStrdup(str1));
    if (str1 == ((void*)0))
        return(xmlStrndup(str2, len));

    size = xmlStrlen(str1);
    if (size < 0)
        return(((void*)0));
    ret = (xmlChar *) xmlMalloc((size + len + 1) * sizeof(xmlChar));
    if (ret == ((void*)0)) {
        xmlErrMemory(((void*)0), ((void*)0));
        return(xmlStrndup(str1, size));
    }
    memcpy(ret, str1, size * sizeof(xmlChar));
    memcpy(&ret[size], str2, len * sizeof(xmlChar));
    ret[size + len] = 0;
    return(ret);
}
