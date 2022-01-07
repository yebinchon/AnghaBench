
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CALL (char* (*) (int,char const*),int,char const*) ;
 int LOG (char*,char*,int,char const*) ;
 scalar_t__ override ;

char *setlocale (int cat, const char *locale)
{
    if (override && locale != ((void*)0))
    {
        LOG("Blocked", "%d, \"%s\"", cat, locale);
        return ((void*)0);
    }
    return CALL(setlocale, cat, locale);
}
