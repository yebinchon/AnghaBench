
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int KEY_MAX ;
 int * ppsz_keys ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
str2key(const char *psz_key)
{
    for (unsigned int i = 0; i < KEY_MAX; ++i)
    {
        if (strcmp(ppsz_keys[i], psz_key) == 0)
            return i;
    }
    return -1;
}
