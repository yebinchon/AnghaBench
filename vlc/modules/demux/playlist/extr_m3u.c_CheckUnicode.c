
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsUTF8 (char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *CheckUnicode (const char *str)
{
    return IsUTF8 (str) ? strdup (str): ((void*)0);
}
