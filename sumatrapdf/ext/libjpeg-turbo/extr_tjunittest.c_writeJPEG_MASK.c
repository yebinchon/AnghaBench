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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (unsigned char*,unsigned long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(unsigned char *jpegBuf, unsigned long jpegSize, char *filename)
{
	FILE *file=FUNC2(filename, "wb");
	if(!file || FUNC3(jpegBuf, jpegSize, 1, file)!=1)
	{
		FUNC4("ERROR: Could not write to %s.\n%s\n", filename, FUNC5(errno));
		FUNC0();
	}

	bailout:
	if(file) FUNC1(file);
}