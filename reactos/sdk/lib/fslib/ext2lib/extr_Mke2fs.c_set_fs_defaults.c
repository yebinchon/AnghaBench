
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mke2fs_defaults {int size; int inode_ratio; int blocksize; scalar_t__ type; } ;
struct TYPE_4__ {int s_blocks_count; int s_log_block_size; int s_log_frag_size; } ;
typedef TYPE_1__* PEXT2_SUPER_BLOCK ;


 int EXT2_BLOCK_SIZE (TYPE_1__*) ;
 int EXT2_MIN_BLOCK_LOG_SIZE ;
 char const* default_str ;
 int int_log2 (int) ;
 struct mke2fs_defaults* settings ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

void set_fs_defaults(const char *fs_type,
                PEXT2_SUPER_BLOCK super,
                int blocksize, int *inode_ratio)
{
    int megs;
    int ratio = 0;
    struct mke2fs_defaults *p;

    megs = (super->s_blocks_count * (EXT2_BLOCK_SIZE(super) / 1024) / 1024);

    if (inode_ratio)
        ratio = *inode_ratio;

    if (!fs_type)
        fs_type = default_str;

    for (p = settings; p->type; p++)
    {
        if ((strcmp(p->type, fs_type) != 0) &&
            (strcmp(p->type, default_str) != 0))
            continue;

        if ((p->size != 0) &&
            (megs > p->size))
            continue;

        if (ratio == 0)
            *inode_ratio = p->inode_ratio;

        if (blocksize == 0)
        {
            super->s_log_frag_size = super->s_log_block_size =
                int_log2(p->blocksize >> EXT2_MIN_BLOCK_LOG_SIZE);
        }
    }

    if (blocksize == 0)
    {
        super->s_blocks_count /= EXT2_BLOCK_SIZE(super) / 1024;
    }
}
