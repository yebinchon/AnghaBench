
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BlockBackend ;


 int SEAF_PATH_MAX ;
 int g_unlink (char*) ;
 int get_block_path (int *,char const*,char*,char const*,int) ;

__attribute__((used)) static int
block_backend_fs_remove_block (BlockBackend *bend,
                               const char *store_id,
                               int version,
                               const char *block_id)
{
    char path[SEAF_PATH_MAX];

    get_block_path (bend, block_id, path, store_id, version);

    return g_unlink (path);
}
