
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_version; } ;
struct ext3_dir_entry_2 {int rec_len; scalar_t__ inode; } ;
struct ext2_icb {int dummy; } ;
struct buffer_head {size_t b_size; scalar_t__ b_data; } ;


 int EIO ;
 int ENOENT ;
 int ext3_check_dir_entry (char*,struct inode*,struct ext3_dir_entry_2*,struct buffer_head*,size_t) ;
 struct ext3_dir_entry_2* ext3_next_entry (struct ext3_dir_entry_2*) ;
 scalar_t__ ext3_rec_len_from_disk (int ) ;
 int ext3_rec_len_to_disk (scalar_t__) ;
 int set_buffer_dirty (struct buffer_head*) ;

int ext3_delete_entry(struct ext2_icb *icb, struct inode *dir,
                      struct ext3_dir_entry_2 *de_del,
                      struct buffer_head *bh)
{
    struct ext3_dir_entry_2 *de, *pde = ((void*)0);
    size_t i = 0;

    de = (struct ext3_dir_entry_2 *) bh->b_data;
    while (i < bh->b_size) {
        if (!ext3_check_dir_entry("ext3_delete_entry", dir, de, bh, i))
            return -EIO;
        if (de == de_del) {
            if (pde)
                pde->rec_len = ext3_rec_len_to_disk(
                                   ext3_rec_len_from_disk(pde->rec_len) +
                                   ext3_rec_len_from_disk(de->rec_len));
            else
                de->inode = 0;
            dir->i_version++;

            set_buffer_dirty(bh);
            return 0;
        }
        i += ext3_rec_len_from_disk(de->rec_len);
        pde = de;
        de = ext3_next_entry(de);
    }
    return -ENOENT;
}
