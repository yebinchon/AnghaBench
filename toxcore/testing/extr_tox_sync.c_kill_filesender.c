
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int Tox ;
struct TYPE_2__ {scalar_t__ file; size_t filenumber; } ;


 size_t NUM_FILE_SENDERS ;
 int fclose (scalar_t__) ;
 TYPE_1__* file_senders ;

void kill_filesender(Tox *m, uint32_t filenum)
{
    uint32_t i;

    for (i = 0; i < NUM_FILE_SENDERS; ++i)
        if (file_senders[i].file != 0 && file_senders[i].filenumber == filenum) {
            fclose(file_senders[i].file);
            file_senders[i].file = 0;
        }
}
