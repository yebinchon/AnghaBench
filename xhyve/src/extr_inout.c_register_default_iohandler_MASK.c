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
struct inout_port {char* name; int port; int size; int flags; int /*<<< orphan*/  handler; } ;
typedef  int /*<<< orphan*/  iop ;

/* Variables and functions */
 int IOPORT_F_DEFAULT ; 
 int IOPORT_F_INOUT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inout_port*,int) ; 
 int /*<<< orphan*/  default_inout ; 
 int /*<<< orphan*/  FUNC2 (struct inout_port*) ; 

__attribute__((used)) static void 
FUNC3(int start, int size)
{
	struct inout_port iop;
	
	FUNC0(start, size);

	FUNC1(&iop, sizeof(iop));
	iop.name = "default";
	iop.port = start;
	iop.size = size;
	iop.flags = (int) (IOPORT_F_INOUT | IOPORT_F_DEFAULT);
	iop.handler = default_inout;

	FUNC2(&iop);
}