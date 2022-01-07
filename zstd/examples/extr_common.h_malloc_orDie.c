
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR_malloc ;
 int exit (int ) ;
 void* malloc (size_t) ;
 int perror (char*) ;

__attribute__((used)) static void* malloc_orDie(size_t size)
{
    void* const buff = malloc(size);
    if (buff) return buff;

    perror("malloc");
    exit(ERROR_malloc);
}
