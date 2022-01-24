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
struct TYPE_3__ {unsigned int* count; unsigned char const* buffer; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ SHA1Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char const*,unsigned int) ; 

__attribute__((used)) static void FUNC2(
  SHA1Context *context,
  const unsigned char *data,
  unsigned int len
){
    unsigned int i, j;

    j = context->count[0];
    if ((context->count[0] += len << 3) < j)
        context->count[1] += (len>>29)+1;
    j = (j >> 3) & 63;
    if ((j + len) > 63) {
        (void)FUNC1(&context->buffer[j], data, (i = 64-j));
        FUNC0(context->state, context->buffer);
        for ( ; i + 63 < len; i += 64)
            FUNC0(context->state, &data[i]);
        j = 0;
    } else {
        i = 0;
    }
    (void)FUNC1(&context->buffer[j], &data[i], len - i);
}