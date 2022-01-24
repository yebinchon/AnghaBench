#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* io_channel ;
typedef  int /*<<< orphan*/  errcode_t ;
struct TYPE_7__ {TYPE_1__* manager; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* zeroout ) (TYPE_2__*,unsigned long long,unsigned long long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_IO_CHANNEL ; 
 int /*<<< orphan*/  EXT2_ET_UNIMPLEMENTED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,unsigned long long,unsigned long long) ; 

errcode_t FUNC2(io_channel channel, unsigned long long block,
			     unsigned long long count)
{
	FUNC0(channel, EXT2_ET_MAGIC_IO_CHANNEL);

	if (channel->manager->zeroout)
		return (channel->manager->zeroout)(channel, block, count);

	return EXT2_ET_UNIMPLEMENTED;
}