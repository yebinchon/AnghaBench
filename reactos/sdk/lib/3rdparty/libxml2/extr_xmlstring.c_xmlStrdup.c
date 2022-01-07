
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;


 scalar_t__* xmlStrndup (scalar_t__ const*,int) ;

xmlChar *
xmlStrdup(const xmlChar *cur) {
    const xmlChar *p = cur;

    if (cur == ((void*)0)) return(((void*)0));
    while (*p != 0) p++;
    return(xmlStrndup(cur, p - cur));
}
