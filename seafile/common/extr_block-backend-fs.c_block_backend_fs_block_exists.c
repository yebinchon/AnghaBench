
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int BlockBackend ;


 int FALSE ;
 int F_OK ;
 int SEAF_PATH_MAX ;
 int TRUE ;
 scalar_t__ g_access (char*,int ) ;
 int get_block_path (int *,char const*,char*,char const*,int) ;

__attribute__((used)) static gboolean
block_backend_fs_block_exists (BlockBackend *bend,
                               const char *store_id,
                               int version,
                               const char *block_sha1)
{
    char block_path[SEAF_PATH_MAX];

    get_block_path (bend, block_sha1, block_path, store_id, version);
    if (g_access (block_path, F_OK) == 0)
        return TRUE;
    else
        return FALSE;
}
