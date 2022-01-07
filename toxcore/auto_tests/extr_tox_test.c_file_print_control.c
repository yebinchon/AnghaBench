
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Tox ;
typedef scalar_t__ TOX_FILE_CONTROL ;


 scalar_t__ TOX_FILE_CONTROL_RESUME ;
 int sendf_ok ;

void file_print_control(Tox *tox, uint32_t friend_number, uint32_t file_number, TOX_FILE_CONTROL control,
                        void *userdata)
{
    if (*((uint32_t *)userdata) != 974536)
        return;


    if (file_number == 0 && control == TOX_FILE_CONTROL_RESUME)
        sendf_ok = 1;
}
