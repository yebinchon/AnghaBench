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
typedef  scalar_t__ TOX_ERR_FILE_SEND_CHUNK ;

/* Variables and functions */
 scalar_t__ TOX_ERR_FILE_SEND_CHUNK_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int file_sending_done ; 
 int m_send_reached ; 
 scalar_t__ max_sending ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  sendf_ok ; 
 int /*<<< orphan*/  sending_num ; 
 scalar_t__ sending_pos ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,scalar_t__,int /*<<< orphan*/ *,size_t,scalar_t__*) ; 

void FUNC3(Tox *tox, uint32_t friend_number, uint32_t file_number, uint64_t position, size_t length,
                            void *user_data)
{
    if (*((uint32_t *)user_data) != 974536)
        return;

    if (!sendf_ok) {
        FUNC0("Didn't get resume control");
    }

    if (sending_pos != position) {
        FUNC0("Bad position %llu", position);
        return;
    }

    if (length == 0) {
        if (file_sending_done) {
            FUNC0("File sending already done.");
        }

        file_sending_done = 1;
        return;
    }

    if (position + length > max_sending) {
        if (m_send_reached) {
            FUNC0("Requested done file tranfer.");
        }

        length = max_sending - position;
        m_send_reached = 1;
    }

    TOX_ERR_FILE_SEND_CHUNK error;
    uint8_t f_data[length];
    FUNC1(f_data, sending_num, length);

    if (FUNC2(tox, friend_number, file_number, position, f_data, length, &error)) {
        ++sending_num;
        sending_pos += length;
    } else {
        FUNC0("Could not send chunk %i", error);
    }

    if (error != TOX_ERR_FILE_SEND_CHUNK_OK) {
        FUNC0("Wrong error code");
    }
}