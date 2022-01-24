#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ fz_weights ;
struct TYPE_16__ {float width; } ;
typedef  TYPE_2__ fz_scale_filter ;
struct TYPE_17__ {int src_w; float x; float dst_w; int vertical; int dst_w_int; int patch_l; int patch_r; int n; int flip; TYPE_1__* weights; TYPE_2__* filter; } ;
typedef  TYPE_3__ fz_scale_cache ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int,TYPE_2__*,float,float,float,int,float) ; 
 int FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,float,float) ; 
 int FUNC3 (float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int,float,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 

__attribute__((used)) static fz_weights *
FUNC8(fz_context *ctx, int src_w, float x, float dst_w, fz_scale_filter *filter, int vertical, int dst_w_int, int patch_l, int patch_r, int n, int flip, fz_scale_cache *cache)
{
	fz_weights *weights;
	float F, G;
	float window;
	int j;

	if (cache)
	{
		if (cache->src_w == src_w && cache->x == x && cache->dst_w == dst_w &&
			cache->filter == filter && cache->vertical == vertical &&
			cache->dst_w_int == dst_w_int &&
			cache->patch_l == patch_l && cache->patch_r == patch_r &&
			cache->n == n && cache->flip == flip)
		{
			return cache->weights;
		}
		cache->src_w = src_w;
		cache->x = x;
		cache->dst_w = dst_w;
		cache->filter = filter;
		cache->vertical = vertical;
		cache->dst_w_int = dst_w_int;
		cache->patch_l = patch_l;
		cache->patch_r = patch_r;
		cache->n = n;
		cache->flip = flip;
		FUNC4(ctx, cache->weights);
		cache->weights = NULL;
	}

	if (dst_w < src_w)
	{
		/* Scaling down */
		F = dst_w / src_w;
		G = 1;
	}
	else
	{
		/* Scaling up */
		F = 1;
		G = src_w / dst_w;
	}
	window = filter->width / F;
	weights	= FUNC6(ctx, filter, src_w, dst_w, patch_r-patch_l, n, flip, patch_l);
	if (!weights)
		return NULL;
	for (j = patch_l; j < patch_r; j++)
	{
		/* find the position of the centre of dst[j] in src space */
		float centre = (j - x + 0.5f)*src_w/dst_w - 0.5f;
		int l, r;
		l = FUNC1(centre - window);
		r = FUNC3(centre + window);
		FUNC5(weights, j);
		for (; l <= r; l++)
		{
			FUNC0(weights, j, l, filter, x, F, G, src_w, dst_w);
		}
		FUNC2(weights, j, dst_w_int, x, dst_w);
		if (vertical)
		{
			FUNC7(weights, j, src_w);
		}
	}
	weights->count++; /* weights->count = dst_w_int now */
	if (cache)
	{
		cache->weights = weights;
	}
	return weights;
}