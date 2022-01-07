
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; } ;
struct ext3_dir_entry_2 {int rec_len; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {char* b_data; } ;
struct TYPE_4__ {int s_blocksize; } ;


 int ext3_check_dir_entry (char*,struct inode*,struct ext3_dir_entry_2*,struct buffer_head*,unsigned long) ;
 scalar_t__ ext3_match (int,char const*,struct ext3_dir_entry_2*) ;
 int ext3_rec_len_from_disk (int ) ;

__attribute__((used)) static inline int search_dirblock(struct buffer_head * bh,
                                  struct inode *dir,
                                  struct dentry *dentry,
                                  unsigned long offset,
                                  struct ext3_dir_entry_2 ** res_dir)
{
    struct ext3_dir_entry_2 * de;
    char * dlimit;
    int de_len;
    const char *name = dentry->d_name.name;
    int namelen = dentry->d_name.len;

    de = (struct ext3_dir_entry_2 *) bh->b_data;
    dlimit = bh->b_data + dir->i_sb->s_blocksize;
    while ((char *) de < dlimit) {



        if ((char *) de + namelen <= dlimit &&
                ext3_match (namelen, name, de)) {

            if (!ext3_check_dir_entry("ext3_find_entry",
                                      dir, de, bh, offset))
                return -1;
            *res_dir = de;
            return 1;
        }

        de_len = ext3_rec_len_from_disk(de->rec_len);

        if (de_len <= 0)
            return -1;
        offset += de_len;
        de = (struct ext3_dir_entry_2 *) ((char *) de + de_len);
    }
    return 0;
}
