
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rtp; int rtcp; } ;
typedef TYPE_1__ srtp_session_t ;


 int assert (int ) ;
 int free (TYPE_1__*) ;
 int proto_destroy (int *) ;

void srtp_destroy (srtp_session_t *s)
{
    assert (s != ((void*)0));

    proto_destroy (&s->rtcp);
    proto_destroy (&s->rtp);
    free (s);
}
