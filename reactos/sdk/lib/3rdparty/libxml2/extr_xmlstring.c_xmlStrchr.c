
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;



const xmlChar *
xmlStrchr(const xmlChar *str, xmlChar val) {
    if (str == ((void*)0)) return(((void*)0));
    while (*str != 0) {
        if (*str == val) return((xmlChar *) str);
        str++;
    }
    return(((void*)0));
}
