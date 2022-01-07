
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int rtp_seq; int rtp_roc; } ;
typedef TYPE_1__ srtp_session_t ;



__attribute__((used)) static uint32_t
srtp_compute_roc (const srtp_session_t *s, uint16_t seq)
{
    uint32_t roc = s->rtp_roc;

    if (((seq - s->rtp_seq) & 0xffff) < 0x8000)
    {

        if (seq < s->rtp_seq)
            roc++;
    }
    else
    {

        if (seq > s->rtp_seq)
            roc--;
    }
    return roc;
}
