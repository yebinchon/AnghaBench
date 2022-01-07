
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* LoadLibraryA (char const*) ;

void *wine_dlopen( const char *filename, int flag, char *error, size_t errorsize )
{
    return LoadLibraryA(filename);
}
