
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int cdc_average_block_size; } ;
struct TYPE_5__ {scalar_t__ st_size; } ;
typedef int SeafileCrypt ;
typedef TYPE_1__ SeafStat ;


 int CDC_AVERAGE_BLOCK_SIZE ;
 int CDC_MAX_BLOCK_SIZE ;
 int CDC_MIN_BLOCK_SIZE ;
 int calculate_chunk_size (scalar_t__) ;
 scalar_t__ compute_file_id_with_cdc (char const*,TYPE_1__*,int *,int,int,int,int,unsigned char*) ;
 int hashcmp (unsigned char*,unsigned char const*) ;
 int memset (unsigned char*,int ,int) ;
 TYPE_2__* seaf ;

int
compare_file_content (const char *path, SeafStat *st, const unsigned char *ce_sha1,
                      SeafileCrypt *crypt, int repo_version)
{
    unsigned char sha1[20];

    if (st->st_size == 0) {
        memset (sha1, 0, 20);
        return hashcmp (sha1, ce_sha1);
    } else {
        if (seaf->cdc_average_block_size == 0) {
            if (compute_file_id_with_cdc (path, st, crypt, repo_version,
                                          CDC_AVERAGE_BLOCK_SIZE,
                                          CDC_MIN_BLOCK_SIZE,
                                          CDC_MAX_BLOCK_SIZE,
                                          sha1) < 0) {
                return -1;
            }
        } else {
            if (compute_file_id_with_cdc (path, st, crypt, repo_version,
                                          seaf->cdc_average_block_size,
                                          seaf->cdc_average_block_size >> 1,
                                          seaf->cdc_average_block_size << 1,
                                          sha1) < 0) {
                return -1;
            }
        }
        if (hashcmp (sha1, ce_sha1) == 0)
            return 0;


        uint32_t block_size = calculate_chunk_size (st->st_size);
        if (compute_file_id_with_cdc (path, st, crypt, repo_version,
                                      block_size,
                                      block_size >> 2,
                                      block_size << 2,
                                      sha1) < 0) {
            return -1;
        }
        return hashcmp (sha1, ce_sha1);
    }
}
