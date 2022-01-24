#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; TYPE_3__* i_sb; } ;
struct ext3_dir_entry_2 {int name_len; int /*<<< orphan*/  inode; int /*<<< orphan*/  rec_len; } ;
struct buffer_head {char* b_data; } ;
struct TYPE_6__ {int s_blocksize; } ;
struct TYPE_5__ {TYPE_1__* s_es; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_inodes_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DL_ERR ; 
 int const FUNC1 (int) ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5 (const char * function, struct inode * dir,
                          struct ext3_dir_entry_2 * de,
                          struct buffer_head * bh,
                          unsigned long offset)
{
    const char * error_msg = NULL;
    const int rlen = FUNC3(de->rec_len);

    if (rlen < FUNC1(1))
        error_msg = "rec_len is smaller than minimal";
    else if (rlen % 4 != 0)
        error_msg = "rec_len % 4 != 0";
    else if (rlen < FUNC1(de->name_len))
        error_msg = "rec_len is too small for name_len";
    else if ((char *) de + rlen > bh->b_data + dir->i_sb->s_blocksize)
        error_msg = "directory entry across blocks";
    else if (FUNC4(de->inode) >
             FUNC4(FUNC2(dir->i_sb)->s_es->s_inodes_count))
        error_msg = "inode out of bounds";

    if (error_msg != NULL) {
        FUNC0(DL_ERR, ("%s: bad entry in directory %u: %s - "
                       "offset=%u, inode=%u, rec_len=%d, name_len=%d\n",
                       function, dir->i_ino, error_msg, offset,
                       (unsigned long) FUNC4(de->inode),
                       rlen, de->name_len));
    }
    return error_msg == NULL ? 1 : 0;
}