
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t int32_t ;
struct TYPE_9__ {TYPE_3__* friendlist; } ;
struct TYPE_8__ {TYPE_1__* file_receiving; TYPE_2__* file_sending; } ;
struct TYPE_7__ {scalar_t__ status; } ;
struct TYPE_6__ {scalar_t__ status; } ;
typedef TYPE_4__ Messenger ;


 scalar_t__ FILESTATUS_NONE ;
 size_t MAX_CONCURRENT_FILE_PIPES ;

__attribute__((used)) static void break_files(const Messenger *m, int32_t friendnumber)
{
    uint32_t i;


    for (i = 0; i < MAX_CONCURRENT_FILE_PIPES; ++i) {
        if (m->friendlist[friendnumber].file_sending[i].status != FILESTATUS_NONE)
            m->friendlist[friendnumber].file_sending[i].status = FILESTATUS_NONE;

        if (m->friendlist[friendnumber].file_receiving[i].status != FILESTATUS_NONE)
            m->friendlist[friendnumber].file_receiving[i].status = FILESTATUS_NONE;
    }
}
