
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static inline char*
find(char *str, char find)
{
    str = strchr( str, find );
    return str != ((void*)0) ? str + 1 : ((void*)0);
}
