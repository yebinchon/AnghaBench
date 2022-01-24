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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_crypt ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int,int*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3(fz_context *ctx, pdf_obj *obj, int tight, pdf_crypt *crypt, int num, int gen)
{
	char buf[1024];
	char *ptr;
	int n;
	int ascii = 1;

	ptr = FUNC2(ctx, buf, sizeof buf, &n, obj, tight, ascii, crypt, num, gen);
	FUNC0(ptr, 1, n, stdout);
	if (ptr != buf)
		FUNC1(ctx, ptr);
}