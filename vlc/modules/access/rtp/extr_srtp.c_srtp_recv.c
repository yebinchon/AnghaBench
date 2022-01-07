
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {int mac; } ;
struct TYPE_8__ {int flags; size_t tag_len; int rtp_rcc; int rtp_roc; TYPE_1__ rtp; } ;
typedef TYPE_2__ srtp_session_t ;


 int EACCES ;
 int EINVAL ;
 int SRTP_UNAUTHENTICATED ;
 int assert (int) ;
 scalar_t__ memcmp (int*,int const*,size_t) ;
 int memcpy (scalar_t__*,int*,int) ;
 scalar_t__ ntohl (scalar_t__) ;
 int printf (char*,...) ;
 int puts (char*) ;
 int rcc_mode (TYPE_2__*) ;
 int* rtp_digest (int ,int*,size_t,scalar_t__) ;
 int rtp_seq (int*) ;
 scalar_t__ srtp_compute_roc (TYPE_2__*,int) ;
 int srtp_crypt (TYPE_2__*,int*,size_t) ;

int
srtp_recv (srtp_session_t *s, uint8_t *buf, size_t *lenp)
{
    size_t len = *lenp;
    if (len < 12u)
        return EINVAL;

    if (!(s->flags & SRTP_UNAUTHENTICATED))
    {
        size_t tag_len = s->tag_len, roc_len = 0;
        if (rcc_mode (s))
        {
            if ((rtp_seq (buf) % s->rtp_rcc) == 0)
            {
                roc_len = 4;
                if (rcc_mode (s) == 3)
                    tag_len = 0;
                else
                    tag_len -= 4;
            }
            else
            {
                if (rcc_mode (s) & 1)
                    tag_len = 0;
            }
        }

        if (len < (12u + roc_len + tag_len))
            return EINVAL;
        len -= roc_len + tag_len;

        uint32_t roc = srtp_compute_roc (s, rtp_seq (buf)), rcc;
        if (roc_len)
        {
            assert (roc_len == 4);
            memcpy (&rcc, buf + len, 4);
            rcc = ntohl (rcc);
        }
        else
            rcc = roc;

        const uint8_t *tag = rtp_digest (s->rtp.mac, buf, len, rcc);
        if (memcmp (buf + len + roc_len, tag, tag_len))
            return EACCES;

        if (roc_len)
        {

            s->rtp_roc += rcc - roc;
            assert (srtp_compute_roc (s, rtp_seq (buf)) == rcc);
        }
        *lenp = len;
    }

    return srtp_crypt (s, buf, len);
}
