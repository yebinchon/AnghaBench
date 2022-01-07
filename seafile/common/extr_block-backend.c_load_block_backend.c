
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GKeyFile ;
typedef int BlockBackend ;


 int g_free (char*) ;
 char* g_key_file_get_string (int *,char*,char*,int *) ;
 int * load_filesystem_block_backend (int *) ;
 int seaf_warning (char*) ;
 scalar_t__ strcmp (char*,char*) ;

BlockBackend*
load_block_backend (GKeyFile *config)
{
    char *backend;
    BlockBackend *bend;

    backend = g_key_file_get_string (config, "block_backend", "name", ((void*)0));
    if (!backend) {
        return ((void*)0);
    }

    if (strcmp(backend, "filesystem") == 0) {
        bend = load_filesystem_block_backend(config);
        g_free (backend);
        return bend;
    }

    seaf_warning ("Unknown backend\n");
    return ((void*)0);
}
