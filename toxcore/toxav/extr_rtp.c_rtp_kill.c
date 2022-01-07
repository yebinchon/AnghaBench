
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RTPSession ;


 int LOGGER_DEBUG (char*,int *) ;
 int free (int *) ;
 int rtp_stop_receiving (int *) ;

void rtp_kill (RTPSession *session)
{
    if (!session)
        return;

    LOGGER_DEBUG("Terminated RTP session: %p", session);

    rtp_stop_receiving (session);
    free (session);
}
