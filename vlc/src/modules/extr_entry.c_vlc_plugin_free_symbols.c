
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free ;
 int tdestroy (void*,int ) ;

__attribute__((used)) static void vlc_plugin_free_symbols(void *root)
{
    tdestroy(root, free);
}
