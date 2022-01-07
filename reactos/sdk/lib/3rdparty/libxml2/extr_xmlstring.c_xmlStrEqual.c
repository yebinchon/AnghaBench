
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;



int
xmlStrEqual(const xmlChar *str1, const xmlChar *str2) {
    if (str1 == str2) return(1);
    if (str1 == ((void*)0)) return(0);
    if (str2 == ((void*)0)) return(0);
    do {
        if (*str1++ != *str2) return(0);
    } while (*str2++);
    return(1);
}
