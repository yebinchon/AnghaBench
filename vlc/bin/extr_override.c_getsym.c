
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTLD_NEXT ;
 int abort () ;
 char* dlerror () ;
 void* dlsym (int ,char const*) ;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;

__attribute__((used)) static void *getsym (const char *name)
{
    void *sym = dlsym (RTLD_NEXT, name);
    if (sym == ((void*)0))
    {
        fprintf (stderr, "Cannot resolve symbol %s: %s\n", name,
                 dlerror ());
        abort ();
    }
    return sym;
}
