
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int Tox ;
struct TYPE_2__ {void* file; } ;
typedef int FILE ;


 int TOX_FILE_CONTROL_CANCEL ;
 int TOX_FILE_CONTROL_RESUME ;
 scalar_t__ TOX_FILE_KIND_DATA ;
 int fclose (int *) ;
 TYPE_1__* file_recv ;
 void* fopen (char*,char*) ;
 char* path ;
 int printf (char*,...) ;
 int sprintf (char*,char*,char*,char const*) ;
 size_t strlen (char*) ;
 scalar_t__ tox_file_control (int *,scalar_t__,scalar_t__,int ,int ) ;

void file_request_accept(Tox *tox, uint32_t friend_number, uint32_t file_number, uint32_t type, uint64_t file_size,
                         const uint8_t *filename, size_t filename_length, void *user_data)
{
    if (type != TOX_FILE_KIND_DATA) {
        printf("Refused invalid file type.");
        tox_file_control(tox, friend_number, file_number, TOX_FILE_CONTROL_CANCEL, 0);
        return;
    }

    char fullpath[1024];
    uint32_t i;
    uint16_t rm = 0;

    for (i = 0; i < strlen((char *)filename); ++i) {
        if (filename[i] == '/')
            rm = i;
    }

    if (path[strlen(path) - 1] == '/')
        sprintf(fullpath, "%s%s", path, filename + rm + 1);
    else
        sprintf(fullpath, "%s/%s", path, filename + rm + 1);

    FILE *tempfile = fopen(fullpath, "rb");

    if (tempfile != 0) {
        fclose(tempfile);
        tox_file_control(tox, friend_number, file_number, TOX_FILE_CONTROL_CANCEL, 0);
        return;
    }

    uint8_t file_index = (file_number >> 16) - 1;
    file_recv[file_index].file = fopen(fullpath, "wb");

    if (file_recv[file_index].file == 0) {
        tox_file_control(tox, friend_number, file_number, TOX_FILE_CONTROL_CANCEL, 0);
        return;
    }

    if (tox_file_control(tox, friend_number, file_number, TOX_FILE_CONTROL_RESUME, 0)) {
        printf("Accepted file transfer. (file: %s)\n", fullpath);
    }

}
