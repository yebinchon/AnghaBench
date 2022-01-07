
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* heap_alloc (int) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline char *strdupU( const char *src )
{
    char *dst;
    if (!src) return ((void*)0);
    if ((dst = heap_alloc( (strlen( src ) + 1) * sizeof(char) ))) strcpy( dst, src );
    return dst;
}
