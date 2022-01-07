
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int cdc ;
struct TYPE_5__ {scalar_t__ blk_sha1s; int file_sum; int write_block; void* block_max_sz; void* block_min_sz; void* block_sz; } ;
typedef int SeafileCrypt ;
typedef int SeafStat ;
typedef TYPE_1__ CDCFileDescriptor ;


 int FALSE ;
 scalar_t__ filename_chunk_cdc (char const*,TYPE_1__*,int *,int ) ;
 int free (scalar_t__) ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int seaf_fs_manager_calculate_seafile_id_json (int,TYPE_1__*,unsigned char*) ;
 int seaf_warning (char*) ;
 int seafile_write_chunk ;

__attribute__((used)) static int
compute_file_id_with_cdc (const char *path, SeafStat *st,
                          SeafileCrypt *crypt, int repo_version,
                          uint32_t blk_avg_size, uint32_t blk_min_size, uint32_t blk_max_size,
                          unsigned char sha1[])
{
    CDCFileDescriptor cdc;

    memset (&cdc, 0, sizeof(cdc));
    cdc.block_sz = blk_avg_size;
    cdc.block_min_sz = blk_min_size;
    cdc.block_max_sz = blk_max_size;
    cdc.write_block = seafile_write_chunk;
    if (filename_chunk_cdc (path, &cdc, crypt, FALSE) < 0) {
        seaf_warning ("Failed to chunk file.\n");
        return -1;
    }

    if (repo_version > 0)
        seaf_fs_manager_calculate_seafile_id_json (repo_version, &cdc, sha1);
    else
        memcpy (sha1, cdc.file_sum, 20);

    if (cdc.blk_sha1s)
        free (cdc.blk_sha1s);

    return 0;
}
