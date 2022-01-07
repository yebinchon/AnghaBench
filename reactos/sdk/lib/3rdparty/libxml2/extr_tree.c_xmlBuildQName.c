
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char xmlChar ;


 int memcpy (char*,char const*,int) ;
 int strlen (char*) ;
 scalar_t__ xmlMallocAtomic (int) ;
 int xmlTreeErrMemory (char*) ;

xmlChar *
xmlBuildQName(const xmlChar *ncname, const xmlChar *prefix,
       xmlChar *memory, int len) {
    int lenn, lenp;
    xmlChar *ret;

    if (ncname == ((void*)0)) return(((void*)0));
    if (prefix == ((void*)0)) return((xmlChar *) ncname);

    lenn = strlen((char *) ncname);
    lenp = strlen((char *) prefix);

    if ((memory == ((void*)0)) || (len < lenn + lenp + 2)) {
 ret = (xmlChar *) xmlMallocAtomic(lenn + lenp + 2);
 if (ret == ((void*)0)) {
     xmlTreeErrMemory("building QName");
     return(((void*)0));
 }
    } else {
 ret = memory;
    }
    memcpy(&ret[0], prefix, lenp);
    ret[lenp] = ':';
    memcpy(&ret[lenp + 1], ncname, lenn);
    ret[lenn + lenp + 1] = 0;
    return(ret);
}
