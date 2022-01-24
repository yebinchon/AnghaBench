#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ext3_dir_entry_2 {int /*<<< orphan*/  rec_len; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

struct ext3_dir_entry_2 *
            FUNC1(struct ext3_dir_entry_2 *p)
{
    return (struct ext3_dir_entry_2 *)((char *)p +
                                       FUNC0(p->rec_len));
}