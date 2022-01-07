
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 scalar_t__ isurihex (char const) ;
 scalar_t__ isurisafe (int) ;
 scalar_t__ isurisubdelim (int) ;
 int * strchr (char const*,int) ;

__attribute__((used)) static bool vlc_uri_component_validate(const char *str, const char *extras)
{
    assert(str != ((void*)0));

    for (size_t i = 0; str[i] != '\0'; i++)
    {
        int c = str[i];

        if (isurisafe(c) || isurisubdelim(c))
            continue;
        if (strchr(extras, c) != ((void*)0))
            continue;
        if (c == '%' && isurihex(str[i + 1]) && isurihex(str[i + 2]))
        {
            i += 2;
            continue;
        }
        return 0;
    }
    return 1;
}
