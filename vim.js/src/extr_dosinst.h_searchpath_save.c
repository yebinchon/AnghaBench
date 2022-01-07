
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* alloc (scalar_t__) ;
 char* searchpath (char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *
searchpath_save(char *name)
{
    char *p;
    char *s;

    p = searchpath(name);
    if (p == ((void*)0))
 return ((void*)0);
    s = alloc(strlen(p) + 1);
    strcpy(s, p);
    return s;
}
