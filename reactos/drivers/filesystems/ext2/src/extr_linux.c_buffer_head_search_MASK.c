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
struct rb_root {int dummy; } ;
struct buffer_head {int dummy; } ;
struct block_device {struct rb_root bd_bh_root; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 struct buffer_head* FUNC0 (struct rb_root*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct buffer_head *FUNC1(struct block_device *bdev,
                     sector_t blocknr)
{
    struct rb_root *root;
    root = &bdev->bd_bh_root;
    return FUNC0(root, blocknr);
}