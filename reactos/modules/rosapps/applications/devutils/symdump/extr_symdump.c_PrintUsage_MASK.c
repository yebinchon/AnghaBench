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
typedef  int /*<<< orphan*/  VOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

VOID
FUNC1()
{
	FUNC0("Syntax:\n\n");
	FUNC0("dumpsym <file> [-sp=<symbolpath>] [-p] [<symname>]\n\n");
	FUNC0("<file>           The PE file you want to dump the symbols of\n");
	FUNC0("-sp=<symbolpath> Path to your symbol files.\n");
	FUNC0("                 Default is MS symbol server.\n");
	FUNC0("-p               Enable struct positions.\n");
	FUNC0("<symname>        A name of a Symbol, you want to dump\n");
	FUNC0("                 Default is all symbols.\n");
	FUNC0("\n");
}