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
struct io {int dummy; } ;
typedef  int /*<<< orphan*/  io_read_fn ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int /*<<< orphan*/  IO_RD ; 
 int FUNC0 (char*) ; 
 int FUNC1 (struct io*,char const*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct io*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 

enum status_code
FUNC3(const char **argv, const char *separators,
	    io_read_fn read_property, void *data)
{
	struct io io;

	if (!FUNC2(&io, IO_RD, NULL, NULL, argv))
		return FUNC0("Failed to open IO");
	return FUNC1(&io, separators, read_property, data);
}