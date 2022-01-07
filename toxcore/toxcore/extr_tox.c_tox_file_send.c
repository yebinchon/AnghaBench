
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef long uint32_t ;
typedef int Tox ;
typedef int TOX_ERR_FILE_SEND ;
typedef int Messenger ;


 int FILE_ID_LENGTH ;
 int SET_ERROR_PARAMETER (int *,int ) ;
 int TOX_ERR_FILE_SEND_FRIEND_NOT_CONNECTED ;
 int TOX_ERR_FILE_SEND_FRIEND_NOT_FOUND ;
 int TOX_ERR_FILE_SEND_NAME_TOO_LONG ;
 int TOX_ERR_FILE_SEND_NULL ;
 int TOX_ERR_FILE_SEND_OK ;
 int TOX_ERR_FILE_SEND_TOO_MANY ;
 long UINT32_MAX ;
 long new_filesender (int *,long,long,int ,int const*,int const*,size_t) ;
 int new_symmetric_key (int *) ;

uint32_t tox_file_send(Tox *tox, uint32_t friend_number, uint32_t kind, uint64_t file_size, const uint8_t *file_id,
                       const uint8_t *filename, size_t filename_length, TOX_ERR_FILE_SEND *error)
{
    if (filename_length && !filename) {
        SET_ERROR_PARAMETER(error, TOX_ERR_FILE_SEND_NULL);
        return UINT32_MAX;
    }

    uint8_t f_id[FILE_ID_LENGTH];

    if (!file_id) {

        new_symmetric_key(f_id);
        file_id = f_id;
    }

    Messenger *m = tox;
    long int file_num = new_filesender(m, friend_number, kind, file_size, file_id, filename, filename_length);

    if (file_num >= 0) {
        SET_ERROR_PARAMETER(error, TOX_ERR_FILE_SEND_OK);
        return file_num;
    }

    switch (file_num) {
        case -1:
            SET_ERROR_PARAMETER(error, TOX_ERR_FILE_SEND_FRIEND_NOT_FOUND);
            return UINT32_MAX;

        case -2:
            SET_ERROR_PARAMETER(error, TOX_ERR_FILE_SEND_NAME_TOO_LONG);
            return UINT32_MAX;

        case -3:
            SET_ERROR_PARAMETER(error, TOX_ERR_FILE_SEND_TOO_MANY);
            return UINT32_MAX;

        case -4:
            SET_ERROR_PARAMETER(error, TOX_ERR_FILE_SEND_FRIEND_NOT_CONNECTED);
            return UINT32_MAX;
    }


    return UINT32_MAX;
}
