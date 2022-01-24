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
struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 struct buffer_head* FUNC0 (struct block_device*,int /*<<< orphan*/ ,unsigned long,int) ; 

struct buffer_head *
FUNC1(
    struct block_device *   bdev,
    sector_t                block,
    unsigned long           size,
    int                     zero
) 
{
    return FUNC0(bdev, block, size, zero);
}