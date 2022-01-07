
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 scalar_t__ memcmp (char const*,char const*,size_t const) ;
 size_t strlen (char const*) ;

char * strnstr (const char *haystack, const char *needle, size_t len)
{
    assert(needle != ((void*)0));

    const size_t i = strlen(needle);
    if (i == 0)
        return (char *)haystack;

    if( len < i )
      return ((void*)0);

    size_t count = len - i;

    do
    {
      if( memcmp(haystack, needle, i) == 0 )
        return (char*) haystack;
      haystack++;
    }
    while(count--);

    return ((void*)0);
}
