#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* rgba; int* cmyk; size_t* cs_pos; int /*<<< orphan*/ ** cs; } ;
typedef  TYPE_1__ fz_separations ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int FZ_MAX_COLORS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (float*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(fz_context *ctx,
	const fz_separations *seps,
	int i,
	fz_colorspace *dst_cs, float *convert,
	fz_colorspace *prf,
	fz_color_params color_params)
{
	float colors[FZ_MAX_COLORS];

	if (!seps->cs[i])
	{
		switch (FUNC0(ctx, dst_cs))
		{
		case 3:
			convert[0] = (seps->rgba[i] & 0xff)/ 255.0f;
			convert[1] = ((seps->rgba[i]>>8) & 0xff)/ 255.0f;
			convert[2] = ((seps->rgba[i]>>16) & 0xff)/ 255.0f;
			convert[3] = ((seps->rgba[i]>>24) & 0xff)/ 255.0f;
			return;
		case 4:
			convert[0] = (seps->cmyk[i] & 0xff)/ 255.0f;
			convert[1] = ((seps->cmyk[i]>>8) & 0xff)/ 255.0f;
			convert[2] = ((seps->cmyk[i]>>16) & 0xff)/ 255.0f;
			convert[3] = ((seps->cmyk[i]>>24) & 0xff)/ 255.0f;
			return;
		default:
			FUNC2(ctx, FZ_ERROR_GENERIC, "Cannot return equivalent in this colorspace");
		}
	}

	FUNC3(colors, 0, sizeof(float) * FUNC0(ctx, seps->cs[i]));
	colors[seps->cs_pos[i]] = 1;
	FUNC1(ctx, seps->cs[i], colors, dst_cs, convert, prf, color_params);
}