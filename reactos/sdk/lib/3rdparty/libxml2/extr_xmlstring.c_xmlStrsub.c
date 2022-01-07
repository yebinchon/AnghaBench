
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;


 scalar_t__* xmlStrndup (scalar_t__ const*,int) ;

xmlChar *
xmlStrsub(const xmlChar *str, int start, int len) {
    int i;

    if (str == ((void*)0)) return(((void*)0));
    if (start < 0) return(((void*)0));
    if (len < 0) return(((void*)0));

    for (i = 0;i < start;i++) {
        if (*str == 0) return(((void*)0));
        str++;
    }
    if (*str == 0) return(((void*)0));
    return(xmlStrndup(str, len));
}
