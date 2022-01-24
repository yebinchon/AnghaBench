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
typedef  size_t uint32_t ;
typedef  int int64_t ;
struct TYPE_4__ {size_t buffer_end; int /*<<< orphan*/ ** buffer; } ;
typedef  TYPE_1__ Packets_Array ;
typedef  int /*<<< orphan*/  Packet_Data ;

/* Variables and functions */
 size_t CRYPTO_PACKET_BUFFER_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 size_t FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int64_t FUNC3(Packets_Array *array, const Packet_Data *data)
{
    if (FUNC2(array) >= CRYPTO_PACKET_BUFFER_SIZE)
        return -1;

    Packet_Data *new_d = FUNC0(sizeof(Packet_Data));

    if (new_d == NULL)
        return -1;

    FUNC1(new_d, data, sizeof(Packet_Data));
    uint32_t id = array->buffer_end;
    array->buffer[id % CRYPTO_PACKET_BUFFER_SIZE] = new_d;
    ++array->buffer_end;
    return id;
}