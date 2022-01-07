
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;


 int xmlStrEqual (scalar_t__ const*,scalar_t__ const*) ;

int
xmlStrQEqual(const xmlChar *pref, const xmlChar *name, const xmlChar *str) {
    if (pref == ((void*)0)) return(xmlStrEqual(name, str));
    if (name == ((void*)0)) return(0);
    if (str == ((void*)0)) return(0);

    do {
        if (*pref++ != *str) return(0);
    } while ((*str++) && (*pref));
    if (*str++ != ':') return(0);
    do {
        if (*name++ != *str) return(0);
    } while (*str++);
    return(1);
}
