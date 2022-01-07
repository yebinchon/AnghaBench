
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 char* malloc (int) ;
 int printf (char*) ;

__attribute__((used)) static void *
alloc(int len)
{
    char *s;

    s = malloc(len);
    if (s == ((void*)0))
    {
 printf("ERROR: out of memory\n");
 exit(1);
    }
    return (void *)s;
}
