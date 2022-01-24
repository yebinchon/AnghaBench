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
typedef  char uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  Tox ;

/* Variables and functions */
 int /*<<< orphan*/  TOX_FILE_CONTROL_CANCEL ; 
 int /*<<< orphan*/  TOX_FILE_CONTROL_RESUME ; 
 scalar_t__ TOX_FILE_KIND_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__,scalar_t__,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(Tox *tox, uint32_t friend_number, uint32_t file_number, uint32_t type, uint64_t file_size,
                         const uint8_t *filename, size_t filename_length, void *user_data)
{
    if (type != TOX_FILE_KIND_DATA) {
        FUNC0("Refused invalid file type.");
        FUNC2(tox, friend_number, file_number, TOX_FILE_CONTROL_CANCEL, 0);
        return;
    }

    char msg[512];
    FUNC1(msg, "[t] %u is sending us: %s of size %llu", friend_number, filename, (long long unsigned int)file_size);
    FUNC0(msg);

    if (FUNC2(tox, friend_number, file_number, TOX_FILE_CONTROL_RESUME, 0)) {
        FUNC1(msg, "Accepted file transfer. (saving file as: %u.%u.bin)", friend_number, file_number);
        FUNC0(msg);
    } else
        FUNC0("Could not accept file transfer.");
}