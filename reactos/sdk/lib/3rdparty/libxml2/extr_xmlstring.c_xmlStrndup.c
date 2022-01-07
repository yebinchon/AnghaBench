
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;


 int memcpy (scalar_t__*,scalar_t__ const*,int) ;
 int xmlErrMemory (int *,int *) ;
 scalar_t__ xmlMallocAtomic (int) ;

xmlChar *
xmlStrndup(const xmlChar *cur, int len) {
    xmlChar *ret;

    if ((cur == ((void*)0)) || (len < 0)) return(((void*)0));
    ret = (xmlChar *) xmlMallocAtomic((len + 1) * sizeof(xmlChar));
    if (ret == ((void*)0)) {
        xmlErrMemory(((void*)0), ((void*)0));
        return(((void*)0));
    }
    memcpy(ret, cur, len * sizeof(xmlChar));
    ret[len] = 0;
    return(ret);
}
