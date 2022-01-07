
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;


 int * xmlCharStrndup (char const*,int) ;

xmlChar *
xmlCharStrdup(const char *cur) {
    const char *p = cur;

    if (cur == ((void*)0)) return(((void*)0));
    while (*p != '\0') p++;
    return(xmlCharStrndup(cur, p - cur));
}
