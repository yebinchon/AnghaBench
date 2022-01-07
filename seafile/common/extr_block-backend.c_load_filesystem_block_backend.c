
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GKeyFile ;
typedef int BlockBackend ;


 int * block_backend_fs_new (char*,char*) ;
 int g_free (char*) ;
 char* g_key_file_get_string (int *,char*,char*,int *) ;
 int seaf_warning (char*) ;

BlockBackend*
load_filesystem_block_backend(GKeyFile *config)
{
    BlockBackend *bend;
    char *tmp_dir;
    char *block_dir;

    block_dir = g_key_file_get_string (config, "block_backend", "block_dir", ((void*)0));
    if (!block_dir) {
        seaf_warning ("Block dir not set in config.\n");
        return ((void*)0);
    }

    tmp_dir = g_key_file_get_string (config, "block_backend", "tmp_dir", ((void*)0));
    if (!tmp_dir) {
        seaf_warning ("Block tmp dir not set in config.\n");
        return ((void*)0);
    }

    bend = block_backend_fs_new (block_dir, tmp_dir);

    g_free (block_dir);
    g_free (tmp_dir);
    return bend;
}
