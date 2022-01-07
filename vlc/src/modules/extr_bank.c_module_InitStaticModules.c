
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_plugin_t ;


 scalar_t__ likely (int ) ;
 int * module_InitStatic (scalar_t__) ;
 int vlc_plugin_store (int *) ;
 scalar_t__* vlc_static_modules ;

__attribute__((used)) static void module_InitStaticModules(void)
{
    if (!vlc_static_modules)
        return;

    for (unsigned i = 0; vlc_static_modules[i]; i++)
    {
        vlc_plugin_t *lib = module_InitStatic(vlc_static_modules[i]);
        if (likely(lib != ((void*)0)))
            vlc_plugin_store(lib);
    }
}
