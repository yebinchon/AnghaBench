
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 size_t strlen (char const*) ;
 char* strnstr (char const*,char const*,size_t) ;

__attribute__((used)) static void test( const char* haystack, const char* needle, size_t len, bool res )
{
    if ( len == 0 )
        len = strlen( haystack );
    char* str = strnstr( haystack, needle, len );
    assert( res == ( str != ((void*)0) ) );
}
