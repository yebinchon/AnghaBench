
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int payload_type; int friend_number; int m; } ;
typedef TYPE_1__ RTPSession ;


 int LOGGER_DEBUG (char*,TYPE_1__*) ;
 int LOGGER_WARNING (char*) ;
 int handle_rtp_packet ;
 int m_callback_rtp_packet (int ,int ,int ,int ,TYPE_1__*) ;

int rtp_allow_receiving(RTPSession *session)
{
    if (session == ((void*)0))
        return -1;

    if (m_callback_rtp_packet(session->m, session->friend_number, session->payload_type,
                              handle_rtp_packet, session) == -1) {
        LOGGER_WARNING("Failed to register rtp receive handler");
        return -1;
    }

    LOGGER_DEBUG("Started receiving on session: %p", session);
    return 0;
}
