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
typedef  int /*<<< orphan*/  fz_deflate_level ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char**) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *,size_t*,unsigned char*,size_t,int /*<<< orphan*/ ) ; 

unsigned char *FUNC2(fz_context *ctx, size_t *compressed_length, fz_buffer *buffer, fz_deflate_level level)
{
	unsigned char *data;
	size_t size = FUNC0(ctx, buffer, &data);

	if (size == 0 || data == NULL)
	{
		*compressed_length = 0;
		return NULL;
	}

	return FUNC1(ctx, compressed_length, data, size, level);
}