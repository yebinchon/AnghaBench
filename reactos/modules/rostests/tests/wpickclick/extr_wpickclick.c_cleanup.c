
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strlen (char*) ;

char* cleanup(char* str)
{
    char* s;

    while (*str==' ' || *str=='\t' || *str=='\r' || *str=='\n')
        str++;
    s=strchr(str,'\n');
    if (!s)
        s=str+strlen(str)-1;
    while (s>str && (*s==' ' || *s=='\t' || *s=='\r' || *s=='\n'))
        s--;
    *(s+1)='\0';
    return str;
}
