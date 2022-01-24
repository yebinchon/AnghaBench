#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t size; TYPE_1__* data; } ;
struct spu_channel {TYPE_2__ entries; } ;
struct TYPE_3__ {int subpic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,size_t) ; 

__attribute__((used)) static void FUNC3(struct spu_channel *channel, size_t index)
{
    FUNC0(index < channel->entries.size);
    FUNC0(channel->entries.data[index].subpic);

    FUNC1(channel->entries.data[index].subpic);
    FUNC2(&channel->entries, index);
}