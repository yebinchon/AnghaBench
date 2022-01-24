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
typedef  char* ptrdiff_t ;
struct TYPE_3__ {char* scratch; int size; int base_size; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ pdf_lexbuf ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

ptrdiff_t FUNC3(fz_context *ctx, pdf_lexbuf *lb)
{
	char *old = lb->scratch;
	int newsize = lb->size * 2;
	if (lb->size == lb->base_size)
	{
		lb->scratch = FUNC0(ctx, newsize);
		FUNC2(lb->scratch, lb->buffer, lb->size);
	}
	else
	{
		lb->scratch = FUNC1(ctx, lb->scratch, newsize);
	}
	lb->size = newsize;
	return lb->scratch - old;
}