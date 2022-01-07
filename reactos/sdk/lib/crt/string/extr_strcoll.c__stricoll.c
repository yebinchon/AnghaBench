
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _stricmp (char const*,char const*) ;

int _stricoll(const char* s1, const char* s2)
{
    return _stricmp(s1, s2);
}
