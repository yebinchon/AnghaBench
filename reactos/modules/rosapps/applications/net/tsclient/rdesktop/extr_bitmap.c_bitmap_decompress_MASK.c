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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int) ; 

BOOL
FUNC4(uint8 * output, int width, int height, uint8 * input, int size, int Bpp)
{
#ifdef BITMAP_SPEED_OVER_SIZE
	BOOL rv = False;
	switch (Bpp)
	{
		case 1:
			rv = bitmap_decompress1(output, width, height, input, size);
			break;
		case 2:
			rv = bitmap_decompress2(output, width, height, input, size);
			break;
		case 3:
			rv = bitmap_decompress3(output, width, height, input, size);
			break;
	}
#else
	BOOL rv;
  rv = FUNC3(output, width, height, input, size, Bpp);
#endif
	return rv;
}