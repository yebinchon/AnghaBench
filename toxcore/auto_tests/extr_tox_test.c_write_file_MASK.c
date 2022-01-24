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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  Tox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int file_recv ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  num ; 
 scalar_t__ size_recv ; 

void FUNC3(Tox *tox, uint32_t friendnumber, uint32_t filenumber, uint64_t position, const uint8_t *data,
                size_t length, void *user_data)
{
    if (*((uint32_t *)user_data) != 974536)
        return;

    if (size_recv != position) {
        FUNC0("Bad position");
        return;
    }

    if (length == 0) {
        file_recv = 1;
        return;
    }

    uint8_t f_data[length];
    FUNC2(f_data, num, length);
    ++num;

    if (FUNC1(f_data, data, length) == 0) {
        size_recv += length;
    } else {
        FUNC0("FILE_CORRUPTED");
    }
}