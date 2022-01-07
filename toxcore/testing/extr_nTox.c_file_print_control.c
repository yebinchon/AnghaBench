
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int Tox ;
struct TYPE_2__ {scalar_t__ friendnum; scalar_t__ filenumber; scalar_t__ file; } ;
typedef int TOX_FILE_CONTROL ;


 unsigned int NUM_FILE_SENDERS ;
 int TOX_FILE_CONTROL_CANCEL ;
 int fclose (scalar_t__) ;
 TYPE_1__* file_senders ;
 int new_lines (char*) ;
 int sprintf (char*,char*,scalar_t__,...) ;

void file_print_control(Tox *tox, uint32_t friend_number, uint32_t file_number, TOX_FILE_CONTROL control,
                        void *user_data)
{
    char msg[512] = {0};
    sprintf(msg, "[t] control %u received", control);
    new_lines(msg);

    if (control == TOX_FILE_CONTROL_CANCEL) {
        unsigned int i;

        for (i = 0; i < NUM_FILE_SENDERS; ++i) {

            if (file_senders[i].file && file_senders[i].friendnum == friend_number && file_senders[i].filenumber == file_number) {
                fclose(file_senders[i].file);
                file_senders[i].file = 0;
                char msg[512];
                sprintf(msg, "[t] %u file transfer: %u cancelled", file_senders[i].friendnum, file_senders[i].filenumber);
                new_lines(msg);
            }
        }
    }
}
