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
struct MemoryStream {size_t length; size_t offset; size_t data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,size_t,size_t) ; 

__attribute__((used)) static size_t FUNC1(void *data, void *buffer, size_t count)
{
    struct MemoryStream *stm = data;
    if (count > stm->length - stm->offset)
        count = stm->length - stm->offset;
    FUNC0(buffer, stm->data + stm->offset, count);
    stm->offset += count;
    return count;
}