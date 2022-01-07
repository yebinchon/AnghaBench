
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ptv; scalar_t__ ptc; scalar_t__ srcc; int * srcv; } ;
typedef TYPE_1__ rtp_session_t ;
typedef int demux_t ;


 TYPE_1__* malloc (int) ;

rtp_session_t *
rtp_session_create (demux_t *demux)
{
    rtp_session_t *session = malloc (sizeof (*session));
    if (session == ((void*)0))
        return ((void*)0);

    session->srcv = ((void*)0);
    session->srcc = 0;
    session->ptc = 0;
    session->ptv = ((void*)0);

    (void)demux;
    return session;
}
