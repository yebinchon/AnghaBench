
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct File_Transfers {scalar_t__ status; scalar_t__ size; scalar_t__ transferred; } ;
typedef int sending_pos ;
typedef size_t int32_t ;
struct TYPE_7__ {TYPE_1__* friendlist; } ;
struct TYPE_6__ {scalar_t__ status; struct File_Transfers* file_sending; struct File_Transfers* file_receiving; } ;
typedef TYPE_2__ Messenger ;


 int FILECONTROL_SEEK ;
 scalar_t__ FILESTATUS_NONE ;
 scalar_t__ FILESTATUS_NOT_ACCEPTED ;
 scalar_t__ FRIEND_ONLINE ;
 int MAX_CONCURRENT_FILE_PIPES ;
 scalar_t__ friend_not_valid (TYPE_2__ const*,size_t) ;
 int host_to_net (int*,int) ;
 scalar_t__ send_file_control_packet (TYPE_2__ const*,size_t,int,int,int ,int*,int) ;

int file_seek(const Messenger *m, int32_t friendnumber, uint32_t filenumber, uint64_t position)
{
    if (friend_not_valid(m, friendnumber))
        return -1;

    if (m->friendlist[friendnumber].status != FRIEND_ONLINE)
        return -2;

    uint32_t temp_filenum;
    uint8_t send_receive, file_number;

    if (filenumber >= (1 << 16)) {
        send_receive = 1;
        temp_filenum = (filenumber >> 16) - 1;
    } else {
        return -4;
    }

    if (temp_filenum >= MAX_CONCURRENT_FILE_PIPES)
        return -3;

    file_number = temp_filenum;

    struct File_Transfers *ft;

    if (send_receive) {
        ft = &m->friendlist[friendnumber].file_receiving[file_number];
    } else {
        ft = &m->friendlist[friendnumber].file_sending[file_number];
    }

    if (ft->status == FILESTATUS_NONE)
        return -3;

    if (ft->status != FILESTATUS_NOT_ACCEPTED)
        return -5;

    if (position >= ft->size) {
        return -6;
    }

    uint64_t sending_pos = position;
    host_to_net((uint8_t *)&sending_pos, sizeof(sending_pos));

    if (send_file_control_packet(m, friendnumber, send_receive, file_number, FILECONTROL_SEEK, (uint8_t *)&sending_pos,
                                 sizeof(sending_pos))) {
        ft->transferred = position;
    } else {
        return -8;
    }

    return 0;
}
