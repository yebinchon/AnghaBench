
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;


 scalar_t__* xmlStrdup (scalar_t__ const*) ;
 scalar_t__* xmlStrncat (scalar_t__*,scalar_t__ const*,int) ;

xmlChar *
xmlStrcat(xmlChar *cur, const xmlChar *add) {
    const xmlChar *p = add;

    if (add == ((void*)0)) return(cur);
    if (cur == ((void*)0))
        return(xmlStrdup(add));

    while (*p != 0) p++;
    return(xmlStrncat(cur, add, p - add));
}
