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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {size_t size; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  const* member_0; } ;
typedef  TYPE_1__ ZSTD_inBuffer ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int,size_t) ; 

__attribute__((used)) static ZSTD_inBuffer FUNC2(const uint8_t **src, size_t *size,
                                  FUZZ_dataProducer_t *producer)
{
    ZSTD_inBuffer buffer = { *src, 0, 0 };

    FUNC0(*size > 0);
    buffer.size = (FUNC1(producer, 1, *size));
    FUNC0(buffer.size <= *size);
    *src += buffer.size;
    *size -= buffer.size;

    return buffer;
}