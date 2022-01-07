
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* vlc_plugin_cb ) (int ,void**) ;


 int free ;
 int tdestroy (void*,int ) ;
 int vlc_plugin_gpa_cb ;

__attribute__((used)) static void *vlc_plugin_get_symbols(vlc_plugin_cb entry)
{
    void *root = ((void*)0);

    if (entry(vlc_plugin_gpa_cb, &root))
    {
        tdestroy(root, free);
        return ((void*)0);
    }

    return root;
}
