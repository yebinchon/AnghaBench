
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BlockBackend ;


 int CreateHardLink (char*,char*,int *) ;
 scalar_t__ EEXIST ;
 int G_FILE_TEST_EXISTS ;
 int GetLastError () ;
 int SEAF_PATH_MAX ;
 scalar_t__ create_parent_path (char*) ;
 scalar_t__ errno ;
 scalar_t__ g_file_test (char*,int ) ;
 int get_block_path (int *,char const*,char*,char const*,int) ;
 int link (char*,char*) ;
 int seaf_warning (char*,char*,char const*,...) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int
block_backend_fs_copy (BlockBackend *bend,
                       const char *src_store_id,
                       int src_version,
                       const char *dst_store_id,
                       int dst_version,
                       const char *block_id)
{
    char src_path[SEAF_PATH_MAX];
    char dst_path[SEAF_PATH_MAX];

    get_block_path (bend, block_id, src_path, src_store_id, src_version);
    get_block_path (bend, block_id, dst_path, dst_store_id, dst_version);

    if (g_file_test (dst_path, G_FILE_TEST_EXISTS))
        return 0;

    if (create_parent_path (dst_path) < 0) {
        seaf_warning ("Failed to create dst path %s for block %s.\n",
                      dst_path, block_id);
        return -1;
    }
    int ret = link (src_path, dst_path);
    if (ret < 0 && errno != EEXIST) {
        seaf_warning ("Failed to link %s to %s: %s.\n",
                      src_path, dst_path, strerror(errno));
        return -1;
    }
    return ret;

}
