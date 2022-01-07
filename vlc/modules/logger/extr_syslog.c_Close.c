
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int closelog () ;
 char* default_ident ;
 int free (char*) ;

__attribute__((used)) static void Close(void *opaque)
{
    char *ident = opaque;

    closelog();
    if (ident != default_ident)
        free(ident);
}
