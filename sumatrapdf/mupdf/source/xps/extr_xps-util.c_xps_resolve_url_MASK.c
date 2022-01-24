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
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 size_t FUNC2 (char*,char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(fz_context *ctx, xps_document *doc, char *output, char *base_uri, char *path, int output_size)
{
	char *p = FUNC3(FUNC4(path));

	if (p != path || path[0] == '/')
	{
		FUNC2(output, path, output_size);
	}
	else
	{
		size_t len = FUNC2(output, base_uri, output_size);
		if (len == 0 || output[len-1] != '/')
			FUNC1(output, "/", output_size);
		FUNC1(output, path, output_size);
	}
	FUNC0(output);
}