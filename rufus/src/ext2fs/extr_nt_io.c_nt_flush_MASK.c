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
struct TYPE_5__ {int /*<<< orphan*/  handle; scalar_t__ written; scalar_t__ read_only; scalar_t__ private_data; } ;
typedef  TYPE_1__* PNT_PRIVATE_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_IO_CHANNEL ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_NT_IO_CHANNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static errcode_t FUNC3(io_channel channel)
{
	PNT_PRIVATE_DATA nt_data = NULL;

	FUNC0(channel, EXT2_ET_MAGIC_IO_CHANNEL);
	nt_data = (PNT_PRIVATE_DATA) channel->private_data;
	FUNC0(nt_data, EXT2_ET_MAGIC_NT_IO_CHANNEL);

	if(nt_data->read_only)
		return 0;


	// Flush file buffers.
	FUNC1(nt_data->handle);


	// Test and correct partition type.
	if (nt_data->written)
		FUNC2(nt_data->handle, 0x83);

	return 0;
}