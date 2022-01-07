
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_BINARY ;
 int O_RDONLY ;
 int free (char*) ;
 int open (char const*,int) ;
 char* wpp_find_include (char const*,int *) ;

__attribute__((used)) static int open_typelib(const char *name)
{
    char *file_name;
    int fd;

    file_name = wpp_find_include(name, ((void*)0));
    if(!file_name)
        return open(name, O_RDONLY | O_BINARY );

    fd = open(file_name, O_RDONLY | O_BINARY );
    free(file_name);
    return fd;
}
