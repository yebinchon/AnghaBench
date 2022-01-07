
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* h_blocktype; void* h_magic; } ;
struct TYPE_9__ {void* s_first; void* s_nr_users; int s_uuid; void* s_sequence; void* s_maxlen; void* s_blocksize; TYPE_1__ s_header; } ;
typedef TYPE_2__ journal_superblock_t ;
typedef TYPE_3__* ext2_filsys ;
typedef int errcode_t ;
typedef scalar_t__ __u32 ;
struct TYPE_11__ {int s_uuid; } ;
struct TYPE_10__ {int blocksize; TYPE_5__* super; } ;


 int EXT2_ET_JOURNAL_TOO_SMALL ;
 int EXT2_MKJOURNAL_V1_SUPER ;
 int JFS_MAGIC_NUMBER ;
 scalar_t__ JFS_MIN_JOURNAL_BLOCKS ;
 int JFS_SUPERBLOCK_V1 ;
 int JFS_SUPERBLOCK_V2 ;
 int ext2fs_get_mem (int,TYPE_2__**) ;
 scalar_t__ ext2fs_has_feature_journal_dev (TYPE_5__*) ;
 int ext2fs_journal_sb_start (int) ;
 void* htonl (int) ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_2__*,int ,int) ;

errcode_t ext2fs_create_journal_superblock(ext2_filsys fs,
        __u32 num_blocks, int flags,
        char **ret_jsb)
{
 errcode_t retval;
 journal_superblock_t *jsb;

 if (num_blocks < JFS_MIN_JOURNAL_BLOCKS)
  return EXT2_ET_JOURNAL_TOO_SMALL;

 if ((retval = ext2fs_get_mem(fs->blocksize, &jsb)))
  return retval;

 memset (jsb, 0, fs->blocksize);

 jsb->s_header.h_magic = htonl(JFS_MAGIC_NUMBER);
 if (flags & EXT2_MKJOURNAL_V1_SUPER)
  jsb->s_header.h_blocktype = htonl(JFS_SUPERBLOCK_V1);
 else
  jsb->s_header.h_blocktype = htonl(JFS_SUPERBLOCK_V2);
 jsb->s_blocksize = htonl(fs->blocksize);
 jsb->s_maxlen = htonl(num_blocks);
 jsb->s_nr_users = htonl(1);
 jsb->s_first = htonl(1);
 jsb->s_sequence = htonl(1);
 memcpy(jsb->s_uuid, fs->super->s_uuid, sizeof(fs->super->s_uuid));




 if (ext2fs_has_feature_journal_dev(fs->super)) {
  jsb->s_nr_users = 0;
  jsb->s_first = htonl(ext2fs_journal_sb_start(fs->blocksize) + 1);
 }

 *ret_jsb = (char *) jsb;
 return 0;
}
