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
struct jpeg_decompress_struct {int /*<<< orphan*/  client_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ fz_dctd ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int custmptr ; 
 int /*<<< orphan*/  fz_dct_mem_alloc ; 
 int /*<<< orphan*/  fz_dct_mem_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int jpeg_cust_mem_data ; 
 int /*<<< orphan*/  FUNC3 (int,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct jpeg_decompress_struct *cinfo, fz_dctd *state)
{
	jpeg_cust_mem_data *custmptr;
	custmptr = FUNC1(state->ctx, jpeg_cust_mem_data);
	if (!FUNC3(custmptr, (void *) state, NULL, NULL, NULL,
				fz_dct_mem_alloc, fz_dct_mem_free,
				fz_dct_mem_alloc, fz_dct_mem_free, NULL))
	{
		FUNC0(state->ctx, custmptr);
		FUNC2(state->ctx, FZ_ERROR_GENERIC, "cannot initialize custom JPEG memory handler");
	}
	cinfo->client_data = custmptr;
}