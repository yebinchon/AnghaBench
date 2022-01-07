
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int Tox ;
struct TYPE_4__ {scalar_t__ file; } ;
struct TYPE_3__ {scalar_t__ file; } ;
typedef scalar_t__ TOX_CONNECTION ;


 unsigned int NUM_FILE_SENDERS ;
 int fclose (scalar_t__) ;
 TYPE_2__* file_recv ;
 TYPE_1__* file_senders ;
 int printf (char*) ;

void print_online(Tox *tox, uint32_t friendnumber, TOX_CONNECTION status, void *userdata)
{
    if (status)
        printf("\nOther went online.\n");
    else {
        printf("\nOther went offline.\n");
        unsigned int i;

        for (i = 0; i < NUM_FILE_SENDERS; ++i) {
            if (file_senders[i].file != 0) {
                fclose(file_senders[i].file);
                file_senders[i].file = 0;
            }

            if (file_recv[i].file != 0) {
                fclose(file_recv[i].file);
                file_recv[i].file = 0;
            }
        }
    }
}
