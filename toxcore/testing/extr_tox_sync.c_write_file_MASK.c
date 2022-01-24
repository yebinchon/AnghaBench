#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  Tox ;
struct TYPE_2__ {scalar_t__ file; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* file_recv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (size_t const*,size_t,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4(Tox *tox, uint32_t friendnumber, uint32_t filenumber, uint64_t position, const uint8_t *data,
                size_t length, void *user_data)
{
    uint8_t file_index = (filenumber >> 16) - 1;

    if (length == 0) {
        FUNC0(file_recv[file_index].file);
        FUNC3("File closed\n");
        file_recv[file_index].file = 0;
        FUNC3("%u file transfer: %u completed\n", friendnumber, filenumber);
        return;
    }

    if (file_recv[file_index].file != 0) {
        FUNC1(file_recv[file_index].file, position, SEEK_SET);

        if (FUNC2(data, length, 1, file_recv[file_index].file) != 1)
            FUNC3("Error writing data\n");
    }
}