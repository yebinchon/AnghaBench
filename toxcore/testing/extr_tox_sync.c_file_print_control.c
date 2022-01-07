
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int Tox ;
struct TYPE_2__ {scalar_t__ file; } ;
typedef scalar_t__ TOX_FILE_CONTROL ;


 scalar_t__ TOX_FILE_CONTROL_CANCEL ;
 int fclose (scalar_t__) ;
 TYPE_1__* file_recv ;
 int kill_filesender (int *,int) ;
 int printf (char*) ;

void file_print_control(Tox *tox, uint32_t friend_number, uint32_t file_number, TOX_FILE_CONTROL control,
                        void *user_data)
{
    if (file_number < (1 << 15) && (control == TOX_FILE_CONTROL_CANCEL)) {
        kill_filesender(tox, file_number);
        return;
    }

    if (file_number > (1 << 15) && (control == TOX_FILE_CONTROL_CANCEL)) {
        uint8_t file_index = (file_number >> 16) - 1;
        fclose(file_recv[file_index].file);
        printf("File closed\n");
        file_recv[file_index].file = 0;
        return;
    }
}
