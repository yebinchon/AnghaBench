
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcLzxcResetTable {int version; int entry_size; int block_len; scalar_t__ compressed_len; scalar_t__ uncompressed_len; int table_offset; scalar_t__ block_count; } ;


 int _CHMC_LZXC_RESETTABLE_V1_LEN ;

void chmc_reset_table_init(struct chmcLzxcResetTable *reset_table)
{
 reset_table->version = 2;
 reset_table->block_count = 0;
 reset_table->entry_size = 8;
 reset_table->table_offset = _CHMC_LZXC_RESETTABLE_V1_LEN;
 reset_table->uncompressed_len = 0;
 reset_table->compressed_len = 0;
 reset_table->block_len = 0x8000;
}
