#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int* count; int /*<<< orphan*/  const* buffer; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t const) ; 

__attribute__((used)) static void FUNC3(SHA1_CTX* context,	const uint8_t* data, const size_t len)
{
	size_t i, j;

#ifdef VERBOSE
	SHAPrintContext(context, "before");
#endif

	j =	(context->count[0] >> 3) & 63;
	if ((context->count[0] += len << 3)	< (len << 3)) context->count[1]++;
	context->count[1] += (len >> 29);
	if ((j + len) >	63)	{
		FUNC2(&context->buffer[j],	data, (i = 64-j));
		FUNC0(context->state, context->buffer);
		for	( ;	i +	63 < len; i	+= 64) {
			FUNC0(context->state, data	+ i);
		}
		j =	0;
	}
	else i = 0;
	FUNC2(&context->buffer[j],	&data[i], len -	i);

#ifdef VERBOSE
	SHAPrintContext(context, "after	");
#endif
}