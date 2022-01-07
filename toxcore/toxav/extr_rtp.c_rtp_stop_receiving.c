
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int payload_type; int friend_number; int m; } ;
typedef TYPE_1__ RTPSession ;


 int LOGGER_DEBUG (char*,TYPE_1__*) ;
 int m_callback_rtp_packet (int ,int ,int ,int *,int *) ;

int rtp_stop_receiving(RTPSession *session)
{
    if (session == ((void*)0))
        return -1;

    m_callback_rtp_packet(session->m, session->friend_number, session->payload_type, ((void*)0), ((void*)0));

    LOGGER_DEBUG("Stopped receiving on session: %p", session);
    return 0;
}
