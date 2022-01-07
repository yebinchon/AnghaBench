
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char const*,char const*,size_t) ;

int _strncoll(const char* s1, const char* s2, size_t c)
{
    return strncmp(s1, s2, c);
}
