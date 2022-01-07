
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {scalar_t__ file; } ;


 size_t NUM_FILE_SENDERS ;
 TYPE_1__* file_senders ;

int not_sending()
{
    uint32_t i;

    for (i = 0; i < NUM_FILE_SENDERS; ++i)
        if (file_senders[i].file != 0)
            return 0;

    return 1;
}
