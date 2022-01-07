
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct File_Transfers {scalar_t__ status; int paused; scalar_t__ size; scalar_t__ requested; scalar_t__ transferred; } ;
typedef int position ;
typedef size_t int32_t ;
struct TYPE_9__ {TYPE_1__* friendlist; int file_filecontrol_userdata; int (* file_filecontrol ) (TYPE_2__*,size_t,int,int,int ) ;} ;
struct TYPE_8__ {int num_sending_files; struct File_Transfers* file_sending; struct File_Transfers* file_receiving; } ;
typedef TYPE_2__ Messenger ;


 int FILECONTROL_ACCEPT ;
 int FILECONTROL_KILL ;
 int FILECONTROL_PAUSE ;
 int FILECONTROL_SEEK ;
 scalar_t__ FILESTATUS_NONE ;
 scalar_t__ FILESTATUS_NOT_ACCEPTED ;
 scalar_t__ FILESTATUS_TRANSFERRING ;
 int FILE_PAUSE_OTHER ;
 int memcpy (scalar_t__*,int*,int) ;
 int net_to_host (int*,int) ;
 int send_file_control_packet (TYPE_2__*,size_t,int,int,int,int ,int ) ;
 int stub1 (TYPE_2__*,size_t,int,int,int ) ;
 int stub2 (TYPE_2__*,size_t,int,int,int ) ;
 int stub3 (TYPE_2__*,size_t,int,int,int ) ;

__attribute__((used)) static int handle_filecontrol(Messenger *m, int32_t friendnumber, uint8_t receive_send, uint8_t filenumber,
                              uint8_t control_type, uint8_t *data, uint16_t length)
{
    if (receive_send > 1)
        return -1;

    if (control_type > FILECONTROL_SEEK)
        return -1;

    uint32_t real_filenumber = filenumber;
    struct File_Transfers *ft;

    if (receive_send == 0) {
        real_filenumber += 1;
        real_filenumber <<= 16;
        ft = &m->friendlist[friendnumber].file_receiving[filenumber];
    } else {
        ft = &m->friendlist[friendnumber].file_sending[filenumber];
    }

    if (ft->status == FILESTATUS_NONE) {

        send_file_control_packet(m, friendnumber, !receive_send, filenumber, FILECONTROL_KILL, 0, 0);
        return -1;
    }

    if (control_type == FILECONTROL_ACCEPT) {
        if (receive_send && ft->status == FILESTATUS_NOT_ACCEPTED) {
            ft->status = FILESTATUS_TRANSFERRING;
        } else {
            if (ft->paused & FILE_PAUSE_OTHER) {
                ft->paused ^= FILE_PAUSE_OTHER;
            } else {
                return -1;
            }
        }

        if (m->file_filecontrol)
            (*m->file_filecontrol)(m, friendnumber, real_filenumber, control_type, m->file_filecontrol_userdata);
    } else if (control_type == FILECONTROL_PAUSE) {
        if ((ft->paused & FILE_PAUSE_OTHER) || ft->status != FILESTATUS_TRANSFERRING) {
            return -1;
        }

        ft->paused |= FILE_PAUSE_OTHER;

        if (m->file_filecontrol)
            (*m->file_filecontrol)(m, friendnumber, real_filenumber, control_type, m->file_filecontrol_userdata);
    } else if (control_type == FILECONTROL_KILL) {

        if (m->file_filecontrol)
            (*m->file_filecontrol)(m, friendnumber, real_filenumber, control_type, m->file_filecontrol_userdata);

        ft->status = FILESTATUS_NONE;

        if (receive_send) {
            --m->friendlist[friendnumber].num_sending_files;
        }

    } else if (control_type == FILECONTROL_SEEK) {
        uint64_t position;

        if (length != sizeof(position)) {
            return -1;
        }


        if (ft->status != FILESTATUS_NOT_ACCEPTED || !receive_send) {
            return -1;
        }

        memcpy(&position, data, sizeof(position));
        net_to_host((uint8_t *) &position, sizeof(position));

        if (position >= ft->size) {
            return -1;
        }

        ft->transferred = ft->requested = position;
    } else {
        return -1;
    }

    return 0;
}
