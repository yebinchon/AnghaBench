
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ malloc (size_t const) ;
 int strcpy (char* const,char const*) ;
 size_t const strlen (char* const) ;

__attribute__((used)) static char* cat3(char const* str1, char const* str2, char const* str3) {
    size_t const size1 = strlen(str1);
    size_t const size2 = strlen(str2);
    size_t const size3 = str3 == ((void*)0) ? 0 : strlen(str3);
    size_t const size = size1 + size2 + size3 + 1;
    char* const dst = (char*)malloc(size);
    if (dst == ((void*)0))
        return ((void*)0);
    strcpy(dst, str1);
    strcpy(dst + size1, str2);
    if (str3 != ((void*)0))
        strcpy(dst + size1 + size2, str3);
    assert(strlen(dst) == size1 + size2 + size3);
    return dst;
}
