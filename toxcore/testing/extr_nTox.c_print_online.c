
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int Tox ;
struct TYPE_2__ {scalar_t__ file; scalar_t__ friendnum; } ;
typedef scalar_t__ TOX_CONNECTION ;


 unsigned int NUM_FILE_SENDERS ;
 int fclose (scalar_t__) ;
 TYPE_1__* file_senders ;
 int printf (char*) ;

void print_online(Tox *tox, uint32_t friendnumber, TOX_CONNECTION status, void *userdata)
{
    if (status)
        printf("\nOther went online.\n");
    else {
        printf("\nOther went offline.\n");
        unsigned int i;

        for (i = 0; i < NUM_FILE_SENDERS; ++i)
            if (file_senders[i].file != 0 && file_senders[i].friendnum == friendnumber) {
                fclose(file_senders[i].file);
                file_senders[i].file = 0;
            }
    }
}
