#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* io_channel ;
typedef  int /*<<< orphan*/  errcode_t ;
struct TYPE_5__ {int block_size; int buffer_block_number; int buffer_size; int /*<<< orphan*/ * buffer; scalar_t__ private_data; } ;
typedef  TYPE_1__* PNT_PRIVATE_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_IO_CHANNEL ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_NT_IO_CHANNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

__attribute__((used)) static errcode_t FUNC4(io_channel channel, int blksize)
{
	PNT_PRIVATE_DATA nt_data = NULL;

	FUNC0(channel, EXT2_ET_MAGIC_IO_CHANNEL);
	nt_data = (PNT_PRIVATE_DATA) channel->private_data;
	FUNC0(nt_data, EXT2_ET_MAGIC_NT_IO_CHANNEL);

	if (channel->block_size != blksize) {
		channel->block_size = blksize;

		FUNC2(nt_data->buffer);
		nt_data->buffer_block_number = 0xffffffff;
		nt_data->buffer_size = channel->block_size;
		FUNC1((nt_data->buffer_size % 512) == 0);

		nt_data->buffer = FUNC3(nt_data->buffer_size);
		if (nt_data->buffer == NULL)
			return ENOMEM;
	}

	return 0;
}