
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int * block_mgr; } ;
typedef int SeafBlockManager ;
typedef int BlockHandle ;


 int BLOCK_WRITE ;
 int rawdata_to_hex (int *,char*,int) ;
 TYPE_1__* seaf ;
 scalar_t__ seaf_block_manager_block_exists (int *,char const*,int,char*) ;
 int seaf_block_manager_block_handle_free (int *,int *) ;
 scalar_t__ seaf_block_manager_close_block (int *,int *) ;
 scalar_t__ seaf_block_manager_commit_block (int *,int *) ;
 int * seaf_block_manager_open_block (int *,char const*,int,char*,int ) ;
 int seaf_block_manager_write_block (int *,int *,char const*,int) ;
 int seaf_warning (char*,char*) ;

__attribute__((used)) static int
do_write_chunk (const char *repo_id, int version,
                uint8_t *checksum, const char *buf, int len)
{
    SeafBlockManager *blk_mgr = seaf->block_mgr;
    char chksum_str[41];
    BlockHandle *handle;
    int n;

    rawdata_to_hex (checksum, chksum_str, 20);


    if (seaf_block_manager_block_exists (seaf->block_mgr,
                                         repo_id, version,
                                         chksum_str))
        return 0;

    handle = seaf_block_manager_open_block (blk_mgr,
                                            repo_id, version,
                                            chksum_str, BLOCK_WRITE);
    if (!handle) {
        seaf_warning ("Failed to open block %s.\n", chksum_str);
        return -1;
    }

    n = seaf_block_manager_write_block (blk_mgr, handle, buf, len);
    if (n < 0) {
        seaf_warning ("Failed to write chunk %s.\n", chksum_str);
        seaf_block_manager_close_block (blk_mgr, handle);
        seaf_block_manager_block_handle_free (blk_mgr, handle);
        return -1;
    }

    if (seaf_block_manager_close_block (blk_mgr, handle) < 0) {
        seaf_warning ("failed to close block %s.\n", chksum_str);
        seaf_block_manager_block_handle_free (blk_mgr, handle);
        return -1;
    }

    if (seaf_block_manager_commit_block (blk_mgr, handle) < 0) {
        seaf_warning ("failed to commit chunk %s.\n", chksum_str);
        seaf_block_manager_block_handle_free (blk_mgr, handle);
        return -1;
    }

    seaf_block_manager_block_handle_free (blk_mgr, handle);
    return 0;
}
