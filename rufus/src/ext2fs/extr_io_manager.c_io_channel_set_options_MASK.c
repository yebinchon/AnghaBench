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
typedef  scalar_t__ errcode_t ;
struct TYPE_7__ {TYPE_1__* manager; } ;
struct TYPE_6__ {scalar_t__ (* set_option ) (TYPE_2__*,char*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ EXT2_ET_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_IO_CHANNEL ; 
 scalar_t__ EXT2_ET_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,char*,char*) ; 

errcode_t FUNC7(io_channel channel, const char *opts)
{
	errcode_t retval = 0;
	char *next, *ptr, *options, *arg;

	FUNC0(channel, EXT2_ET_MAGIC_IO_CHANNEL);

	if (!opts)
		return 0;

	if (!channel->manager->set_option)
		return EXT2_ET_INVALID_ARGUMENT;

	options = FUNC2(FUNC5(opts)+1);
	if (!options)
		return EXT2_ET_NO_MEMORY;
	FUNC4(options, opts);
	ptr = options;

	while (ptr && *ptr) {
		next = FUNC3(ptr, '&');
		if (next)
			*next++ = 0;

		arg = FUNC3(ptr, '=');
		if (arg)
			*arg++ = 0;

		retval = (channel->manager->set_option)(channel, ptr, arg);
		if (retval)
			break;
		ptr = next;
	}
	FUNC1(options);
	return retval;
}