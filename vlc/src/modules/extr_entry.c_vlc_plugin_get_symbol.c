
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_plugin_symbol {void* addr; } ;


 void** tfind (char const**,void**,int ) ;
 int vlc_plugin_symbol_compare ;

__attribute__((used)) static int vlc_plugin_get_symbol(void *root, const char *name,
                                 void **restrict addrp)
{
    if (name == ((void*)0))
    {
        *addrp = ((void*)0);
        return 0;
    }

    const void **symp = tfind(&name, &root, vlc_plugin_symbol_compare);

    if (symp == ((void*)0))
        return -1;

    const struct vlc_plugin_symbol *sym = *symp;

    *addrp = sym->addr;
    return 0;
}
