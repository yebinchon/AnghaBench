
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;



int
xmlStrlen(const xmlChar *str) {
    int len = 0;

    if (str == ((void*)0)) return(0);
    while (*str != 0) {
        str++;
        len++;
    }
    return(len);
}
