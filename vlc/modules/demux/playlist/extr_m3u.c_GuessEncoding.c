
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FromLatin1 (char const*) ;
 scalar_t__ IsUTF8 (char const*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *GuessEncoding (const char *str)
{
    return IsUTF8 (str) ? strdup (str) : FromLatin1 (str);
}
