
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int Tox ;
typedef scalar_t__ TOX_ERR_FILE_SEND_CHUNK ;


 scalar_t__ TOX_ERR_FILE_SEND_CHUNK_OK ;
 int ck_abort_msg (char*,...) ;
 int file_sending_done ;
 int m_send_reached ;
 scalar_t__ max_sending ;
 int memset (int *,int ,size_t) ;
 int sendf_ok ;
 int sending_num ;
 scalar_t__ sending_pos ;
 scalar_t__ tox_file_send_chunk (int *,int,int,scalar_t__,int *,size_t,scalar_t__*) ;

void tox_file_chunk_request(Tox *tox, uint32_t friend_number, uint32_t file_number, uint64_t position, size_t length,
                            void *user_data)
{
    if (*((uint32_t *)user_data) != 974536)
        return;

    if (!sendf_ok) {
        ck_abort_msg("Didn't get resume control");
    }

    if (sending_pos != position) {
        ck_abort_msg("Bad position %llu", position);
        return;
    }

    if (length == 0) {
        if (file_sending_done) {
            ck_abort_msg("File sending already done.");
        }

        file_sending_done = 1;
        return;
    }

    if (position + length > max_sending) {
        if (m_send_reached) {
            ck_abort_msg("Requested done file tranfer.");
        }

        length = max_sending - position;
        m_send_reached = 1;
    }

    TOX_ERR_FILE_SEND_CHUNK error;
    uint8_t f_data[length];
    memset(f_data, sending_num, length);

    if (tox_file_send_chunk(tox, friend_number, file_number, position, f_data, length, &error)) {
        ++sending_num;
        sending_pos += length;
    } else {
        ck_abort_msg("Could not send chunk %i", error);
    }

    if (error != TOX_ERR_FILE_SEND_CHUNK_OK) {
        ck_abort_msg("Wrong error code");
    }
}
