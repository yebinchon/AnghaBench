
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;


 int strncmp (char const*,char const*,int) ;

int
xmlStrncmp(const xmlChar *str1, const xmlChar *str2, int len) {
    register int tmp;

    if (len <= 0) return(0);
    if (str1 == str2) return(0);
    if (str1 == ((void*)0)) return(-1);
    if (str2 == ((void*)0)) return(1);

    tmp = strncmp((const char *)str1, (const char *)str2, len);
    return tmp;







}
