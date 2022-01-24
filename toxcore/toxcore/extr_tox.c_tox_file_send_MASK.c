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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  long uint32_t ;
typedef  int /*<<< orphan*/  Tox ;
typedef  int /*<<< orphan*/  TOX_ERR_FILE_SEND ;
typedef  int /*<<< orphan*/  Messenger ;

/* Variables and functions */
 int FILE_ID_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOX_ERR_FILE_SEND_FRIEND_NOT_CONNECTED ; 
 int /*<<< orphan*/  TOX_ERR_FILE_SEND_FRIEND_NOT_FOUND ; 
 int /*<<< orphan*/  TOX_ERR_FILE_SEND_NAME_TOO_LONG ; 
 int /*<<< orphan*/  TOX_ERR_FILE_SEND_NULL ; 
 int /*<<< orphan*/  TOX_ERR_FILE_SEND_OK ; 
 int /*<<< orphan*/  TOX_ERR_FILE_SEND_TOO_MANY ; 
 long UINT32_MAX ; 
 long FUNC1 (int /*<<< orphan*/ *,long,long,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

uint32_t FUNC3(Tox *tox, uint32_t friend_number, uint32_t kind, uint64_t file_size, const uint8_t *file_id,
                       const uint8_t *filename, size_t filename_length, TOX_ERR_FILE_SEND *error)
{
    if (filename_length && !filename) {
        FUNC0(error, TOX_ERR_FILE_SEND_NULL);
        return UINT32_MAX;
    }

    uint8_t f_id[FILE_ID_LENGTH];

    if (!file_id) {
        /* Tox keys are 32 bytes like FILE_ID_LENGTH. */
        FUNC2(f_id);
        file_id = f_id;
    }

    Messenger *m = tox;
    long int file_num = FUNC1(m, friend_number, kind, file_size, file_id, filename, filename_length);

    if (file_num >= 0) {
        FUNC0(error, TOX_ERR_FILE_SEND_OK);
        return file_num;
    }

    switch (file_num) {
        case -1:
            FUNC0(error, TOX_ERR_FILE_SEND_FRIEND_NOT_FOUND);
            return UINT32_MAX;

        case -2:
            FUNC0(error, TOX_ERR_FILE_SEND_NAME_TOO_LONG);
            return UINT32_MAX;

        case -3:
            FUNC0(error, TOX_ERR_FILE_SEND_TOO_MANY);
            return UINT32_MAX;

        case -4:
            FUNC0(error, TOX_ERR_FILE_SEND_FRIEND_NOT_CONNECTED);
            return UINT32_MAX;
    }

    /* can't happen */
    return UINT32_MAX;
}