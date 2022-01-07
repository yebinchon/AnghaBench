
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int Tox ;


 int TOX_FILE_CONTROL_CANCEL ;
 int TOX_FILE_CONTROL_RESUME ;
 scalar_t__ TOX_FILE_KIND_DATA ;
 int new_lines (char*) ;
 int sprintf (char*,char*,scalar_t__,scalar_t__,...) ;
 scalar_t__ tox_file_control (int *,scalar_t__,scalar_t__,int ,int ) ;

void file_request_accept(Tox *tox, uint32_t friend_number, uint32_t file_number, uint32_t type, uint64_t file_size,
                         const uint8_t *filename, size_t filename_length, void *user_data)
{
    if (type != TOX_FILE_KIND_DATA) {
        new_lines("Refused invalid file type.");
        tox_file_control(tox, friend_number, file_number, TOX_FILE_CONTROL_CANCEL, 0);
        return;
    }

    char msg[512];
    sprintf(msg, "[t] %u is sending us: %s of size %llu", friend_number, filename, (long long unsigned int)file_size);
    new_lines(msg);

    if (tox_file_control(tox, friend_number, file_number, TOX_FILE_CONTROL_RESUME, 0)) {
        sprintf(msg, "Accepted file transfer. (saving file as: %u.%u.bin)", friend_number, file_number);
        new_lines(msg);
    } else
        new_lines("Could not accept file transfer.");
}
