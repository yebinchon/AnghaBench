
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;


 int xmlStrlen (scalar_t__ const*) ;
 int xmlStrncmp (scalar_t__ const*,scalar_t__ const*,int) ;

const xmlChar *
xmlStrstr(const xmlChar *str, const xmlChar *val) {
    int n;

    if (str == ((void*)0)) return(((void*)0));
    if (val == ((void*)0)) return(((void*)0));
    n = xmlStrlen(val);

    if (n == 0) return(str);
    while (*str != 0) {
        if (*str == *val) {
            if (!xmlStrncmp(str, val, n)) return((const xmlChar *) str);
        }
        str++;
    }
    return(((void*)0));
}
