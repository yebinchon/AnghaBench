
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t xmlChar ;


 int* casemap ;

int
xmlStrcasecmp(const xmlChar *str1, const xmlChar *str2) {
    register int tmp;

    if (str1 == str2) return(0);
    if (str1 == ((void*)0)) return(-1);
    if (str2 == ((void*)0)) return(1);
    do {
        tmp = casemap[*str1++] - casemap[*str2];
        if (tmp != 0) return(tmp);
    } while (*str2++ != 0);
    return 0;
}
