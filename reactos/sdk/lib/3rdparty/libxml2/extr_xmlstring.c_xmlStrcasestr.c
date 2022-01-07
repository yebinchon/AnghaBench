
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t xmlChar ;


 scalar_t__* casemap ;
 int xmlStrlen (size_t const*) ;
 int xmlStrncasecmp (size_t const*,size_t const*,int) ;

const xmlChar *
xmlStrcasestr(const xmlChar *str, const xmlChar *val) {
    int n;

    if (str == ((void*)0)) return(((void*)0));
    if (val == ((void*)0)) return(((void*)0));
    n = xmlStrlen(val);

    if (n == 0) return(str);
    while (*str != 0) {
        if (casemap[*str] == casemap[*val])
            if (!xmlStrncasecmp(str, val, n)) return(str);
        str++;
    }
    return(((void*)0));
}
